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

import javax.annotation.Resource;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;

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

	@Resource(name = "lostAniService")
	private LostAnimalServiceImpl serviceLost;
	
	@Resource(name = "StoreLocService")
	private StoreLocationServiceImpl serviceStore;
	
	@Scheduled(cron = "0 47 * * * *")
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
			getAllApiData();

			System.out.println("Thread End Point");
		}
	};
	
	public void getAllApiData() {

		// api data insert & update
		getApiLostAnimal();
		getApiStoreLocation();

	}////////// getAllApiData

	public void getApiLostAnimal() {

		System.out.println("getApiLostAnimal");
		
		StringBuilder urlBuilder = new StringBuilder("http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic"); /* URL */
		BufferedReader rd = null;
		HttpURLConnection conn = null;
		try {

			urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8") + "=1zLzET%2FMkwIpN%2F3VKRAl5vki1mzNsqQ5oKnR3oCnr1YWgOCtn8JOvSdIT8DYsv9vjCCUGt%2F0ENoh8ity5agNiQ%3D%3D"); /* Service Key */
			
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
			urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("300", "UTF-8")); /* 페이지당 보여줄 개수 */
			
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
			if(rd != null)
				try {
					rd.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			if(conn != null) conn.disconnect();
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

	public void getApiStoreLocation() {

	}////////// getApiStoreLocation
	
	public void queryOperatingStore(Map<String, Object> map) {
		
	}////////// queryOperatingStore
	
}//////////////////// SchedulerService class
