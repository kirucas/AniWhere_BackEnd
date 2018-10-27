package com.animal.aniwhere_back.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.animal.aniwhere_back.service.impl.StoreLocationServiceImpl;
import com.animal.aniwhere_back.service.impl.miss.LostAnimalServiceImpl;

@Component
public class SchedulerService {

	private static final String SERVICE_KEY = "1zLzET%2FMkwIpN%2F3VKRAl5vki1mzNsqQ5oKnR3oCnr1YWgOCtn8JOvSdIT8DYsv9vjCCUGt%2F0ENoh8ity5agNiQ%3D%3D";
	
	private String[] store_codes = {"D09A01", "D09A02", "D25A16", "D25A25", "Q12A07", "S04A01", "S04A02", "S04A03"};

	@Resource(name = "lostAniService")
	private LostAnimalServiceImpl serviceLost;
	
	@Resource(name = "StoreLocService")
	private StoreLocationServiceImpl serviceStore;
	
	@Scheduled(cron = "30 9 * * * *")
	public void doingScheduled() throws Exception {
		System.out.println("doingScheduled method start");
		AnotherThread thread = new AnotherThread();
		thread.start();
//		getAllApiData();
		System.out.println("doingScheduled method end");
	}////////// doingScheduled

	class AnotherThread extends Thread {
		@Override
		public void run() {
			System.out.println("Thread Start Point");
			
			getAllApiData();

			System.out.println("Thread End Point");
		}
	};
	
	public void getAllApiData() {

		// api data insert & update
		getApiLostAnimal();
		
		for(String store_code : store_codes)
			getApiStoreLocation(store_code);

	}////////// getAllApiData

	public void getApiLostAnimal() {

		System.out.println("getApiLostAnimal");
		
		StringBuilder urlBuilder = new StringBuilder("http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic"); /* URL */
		BufferedReader rd = null;
		HttpURLConnection conn = null;
		try {

			urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8") + "=" + SERVICE_KEY); /* Service Key */
			
			Calendar calendar = Calendar.getInstance();

			String startDate = null, endDate = null;

			if ((calendar.get(Calendar.MONTH) - 1) == -1)
				startDate = String.format("%s%02d%02d", calendar.get(Calendar.YEAR) - 1, 12, calendar.get(Calendar.DATE));
			else
				startDate = String.format("%s%02d%02d", calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), calendar.get(Calendar.DATE));
			
			urlBuilder.append("&" + URLEncoder.encode("bgnde", "UTF-8") + "=" + URLEncoder.encode(startDate, "UTF-8")); /* 유기날짜 (검색 시작일) (YYYYMMDD) */
			
			if((calendar.get(Calendar.MONTH) + 1) == 12)
				endDate = String.format("%s%02d%02d", calendar.get(Calendar.YEAR) + 1, 1, calendar.get(Calendar.DATE));
			else
				endDate = String.format("%s%02d%02d", calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH) + 2, calendar.get(Calendar.DATE));
			
			urlBuilder.append("&" + URLEncoder.encode("endde", "UTF-8") + "=" + URLEncoder.encode(endDate, "UTF-8")); /* 유기날짜 (검색 종료일) (YYYYMMDD) */
			urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("500", "UTF-8")); /* 페이지당 보여줄 개수 */
			
			System.out.println("시작 : " + startDate + " | 끝 : " + endDate);
		
			URL url = new URL(urlBuilder.toString());
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			System.out.println("Response code: " + conn.getResponseCode());
			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
			
			
			StringBuilder sb = new StringBuilder();
			String line;
			while ((line = rd.readLine()) != null) {
				sb.append(line);
			}
			System.out.println(sb.toString());

			InputSource is = new InputSource(new StringReader(sb.toString()));
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			factory.setNamespaceAware(true);
			Document doc = factory.newDocumentBuilder().parse(is);

			XPathFactory xpathFactory = XPathFactory.newInstance();
			XPath xpath = xpathFactory.newXPath();
			XPathExpression expr = xpath.compile("//items/item");

			NodeList nList = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);

			for (int i = 0; i < nList.getLength(); i++) {
				NodeList child = nList.item(i).getChildNodes();
				Map<String, Object> map = new HashMap<>();
				for (int j = 0; j < child.getLength(); j++) {
					Node node = child.item(j);
					System.out.println(String.format("%s : %s", node.getNodeName(), node.getTextContent()));

					switch (node.getNodeName()) {
					case "desertionNo":
						map.put("no", node.getTextContent());
						break;
					case "happenPlace":
						map.put("place", node.getTextContent());
						break;
					case "kindCd":
						map.put("kind", node.getTextContent());
						break;
					case "noticeSdt":
						map.put("start_notice", node.getTextContent());
						break;
					case "noticeEdt":
						map.put("end_notice", node.getTextContent());
						break;
					case "popfile":
						map.put("img_src", node.getTextContent());
						break;
					case "sexCd":
						map.put("gender", node.getTextContent());
						break;
					case "neuterYn":
						map.put("neuter", node.getTextContent());
						break;
					case "careAddr":
						map.put("addr", node.getTextContent());
						break;
					default:
						map.put(node.getNodeName(), node.getTextContent());
					}

				}

				queryOperatingLost(map);

				System.out.println();

			}

			System.out.println("nList length : " + nList.getLength());

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rd != null)
				try {
					rd.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			if (conn != null)
				conn.disconnect();
		}
		
		System.out.println("getApiLostAnimal method end");

	}////////// getApiLostAnimal
	
	public void queryOperatingLost(Map<String, Object> map) {
		System.out.println("queryOperating method start");
		System.out.println(map.toString());

		if (map.get("processState").toString().contains("종료")) {
			System.out.println("종료된 아이");
			serviceLost.delete(map);
		} else {
			System.out.println(serviceLost.selectOne(map));
			if(map.get("chargeNm") == null)
				map.put("chargeNm", "");
			if (serviceLost.selectOne(map) != null) {
				serviceLost.update(map);
			} else {
				System.out.println("들어옴");
				System.out.println(serviceLost.insert(map));
			}
		}

		System.out.println("queryOperating method end");
	}////////// queryOperating

	public void getApiStoreLocation(String store_code) {

		StringBuilder urlBuilder = null;
		HttpURLConnection conn = null;
		BufferedReader rd = null;
		
		try {
			urlBuilder = new StringBuilder("http://apis.data.go.kr/B553077/api/open/sdsc/storeListInUpjong"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=" + SERVICE_KEY); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("divId","UTF-8") + "=" + URLEncoder.encode("indsSclsCd", "UTF-8")); /* 구분 ID : 소분류 */
	        urlBuilder.append("&" + URLEncoder.encode("key","UTF-8") + "=" + URLEncoder.encode(store_code, "UTF-8")); /* 업종 코드 값(소분류 코드) */
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("60", "UTF-8")); /* 페이지당 건수 */
	        urlBuilder.append("&" + URLEncoder.encode("type", "UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /* 요청 타입(JSON) */
	        
	        URL url = new URL(urlBuilder.toString());
	        conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        
	        System.out.println("Response code: " + conn.getResponseCode());
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        
	        
	        JSONParser parser = new JSONParser();
	        JSONObject rootObject = (JSONObject) parser.parse(sb.toString());
	        JSONArray items = (JSONArray)((JSONObject) rootObject.get("body")).get("items");
	        
	        System.out.println(rootObject.toJSONString());
	        System.out.println(items.toJSONString());
	        
			for (int i = 0; i < items.size(); i++) {
				JSONObject item = (JSONObject) items.get(i);
				Map<String, Object> map = new HashMap<>();
				
//				System.out.println("bizesId" + item.get("bizesId"));
//				System.out.println("bizesNm" + item.get("bizesNm"));
//				System.out.println("brchNm" + item.get("brchNm"));
//				System.out.println("indsSclsCd" + item.get("indsSclsCd"));
//				System.out.println("indsSclsNm" + item.get("indsSclsNm"));
//				System.out.println("lnoAdr" + item.get("lnoAdr"));
//				System.out.println("rdnmAdr" + item.get("rdnmAdr"));
//				System.out.println("lon" + item.get("lon"));
//				System.out.println("lat" + item.get("lat"));
//				System.out.println("dongNo" + item.get("dongNo"));
//				System.out.println("flrNo" + item.get("flrNo"));
//				System.out.println("hoNo" + item.get("hoNo"));
				
				map.put("bizesid", item.get("bizesId") != null ? item.get("bizesId") : "");
				map.put("bizesnm", item.get("bizesNm") != null ? item.get("bizesNm") : "");
				map.put("brchnm", item.get("brchNm") != null ? item.get("brchNm") : "");
				map.put("indssclscd", item.get("indsSclsCd") != null ? item.get("indsSclsCd") : "");
				map.put("indssclsnm", item.get("indsSclsNm") != null ? item.get("indsSclsNm") : "");
				map.put("lnoadr", item.get("lnoAdr") != null ? item.get("lnoAdr") : "");
				map.put("rdnmadr", item.get("rdnmAdr") != null ? item.get("rdnmAdr") : "");
				map.put("lon", item.get("lon") != null ? item.get("lon") : "");
				map.put("lat", item.get("lat") != null ? item.get("lat") : "");
				map.put("dongno", item.get("dongNo") != null ? item.get("dongNo") : "");
				map.put("flrno", item.get("flrNo") != null ? item.get("flrNo") : "");
				map.put("hono", item.get("hoNo") != null ? item.get("hoNo") : "");
				
				queryOperatingStore(map);
				
			}
	        
	        
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(rd != null)
				try {
					rd.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(conn != null)
				conn.disconnect();
		}
        
	}////////// getApiStoreLocation
	
	public void queryOperatingStore(Map<String, Object> map) {
		
		System.out.println("queryOperatingStore method start");
		System.out.println(map.toString());
		
		if(serviceStore.selectOne(map) != null) {
			serviceStore.update(map);
		}
		else {
			serviceStore.insert(map);
		}
		
		System.out.println("queryOperatingStore method end");
		
	}////////// queryOperatingStore
	
}//////////////////// SchedulerService class
