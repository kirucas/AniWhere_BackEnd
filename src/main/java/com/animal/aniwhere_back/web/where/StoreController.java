package com.animal.aniwhere_back.web.where;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.StoreLocationDTO;
import com.animal.aniwhere_back.service.impl.StoreLocationServiceImpl;

@Controller
public class StoreController {

	@Resource(name = "storeLocService")
	private StoreLocationServiceImpl service;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/where/store.aw")
	public String store(Model model) throws Exception {

		Map map = new HashMap();

		map.put("table_name", "movie");

		int start = 1;
		int end = pageSize;

		map.put("start", start);
		map.put("end", end);

		List<StoreLocationDTO> list = service.selectList(map);

		int totalRecordCount = service.getTotalRecord(map);

		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, 1);

		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);

		return "where/store.tiles";
	}////////// store

	@ResponseBody
	@RequestMapping(value = "/where/store/all_list.awa", produces = "text/plain; charset=UTF-8")
	public String allStore(@RequestParam Map map) throws Exception {

		int nowPage = Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		map.put("start", start);
		map.put("end", end);
		
		List<StoreLocationDTO> list = service.selectList(map);
		
		JSONObject json = new JSONObject();
		
		json.put("records", dtoToMap(list));
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);
		
		json.put("pagingString", pagingString);
		
		return json.toJSONString();
		
	}//////////

	@ResponseBody
	@RequestMapping(value = "/where/store/caffe_list.awa", produces = "text/plain; charset=UTF-8")
	public String coffeStore(@RequestParam Map map) throws Exception {

		int nowPage = Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		map.put("start", start);
		map.put("end", end);
		
		map.put("indssclscd", "Q12A07");
		
		List<StoreLocationDTO> list = service.selectList(map);
		
		JSONObject json = new JSONObject();
		
		json.put("records", dtoToMap(list));
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);
		
		json.put("pagingString", pagingString);
		
		return json.toJSONString();
		
	}//////////

	@ResponseBody
	@RequestMapping(value = "/where/store/beauty_list.awa", produces = "text/plain; charset=UTF-8")
	public String beautyStore(@RequestParam Map map) throws Exception {

		int nowPage = Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		map.put("start", start);
		map.put("end", end);
		
		map.put("indssclscd", "D09A02");
		
		List<StoreLocationDTO> list = service.selectList(map);
		
		JSONObject json = new JSONObject();
		
		json.put("records", dtoToMap(list));
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);
		
		json.put("pagingString", pagingString);
		
		return json.toJSONString();
		
	}//////////

	@ResponseBody
	@RequestMapping(value = "/where/store/hospital_list.awa", produces = "text/plain; charset=UTF-8")
	public String hospitalStore(@RequestParam Map map) throws Exception {

		int nowPage = Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		map.put("start", start);
		map.put("end", end);
		
		map.put("indssclscd1", "S04A01");
		map.put("indssclscd2", "S04A02");
		
		List<StoreLocationDTO> list = service.selectList(map);

		JSONObject json = new JSONObject();
		
		json.put("records", dtoToMap(list));
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);
		
		json.put("pagingString", pagingString);
		
		return json.toJSONString();
		
	}//////////

	@ResponseBody
	@RequestMapping(value = "/where/store/pharmacy_list.awa", produces = "text/plain; charset=UTF-8")
	public String pharmacyStore(@RequestParam Map map) throws Exception {

		int nowPage = Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		map.put("start", start);
		map.put("end", end);
		
		map.put("indssclscd", "D25A16");
		
		List<StoreLocationDTO> list = service.selectList(map);
		
		JSONObject json = new JSONObject();
		
		json.put("records", dtoToMap(list));
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);
		
		json.put("pagingString", pagingString);
		
		return json.toJSONString();
		
	}//////////

	@ResponseBody
	@RequestMapping(value = "/where/store/etc_list.awa", produces = "text/plain; charset=UTF-8")
	public String etcStore(@RequestParam Map map) throws Exception {

		int nowPage = Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		map.put("start", start);
		map.put("end", end);
		
		map.put("indssclscd1", "D09A01");
		map.put("indssclscd2", "S04A03");
		
		List<StoreLocationDTO> list = service.selectList(map);
		
		JSONObject json = new JSONObject();
		
		json.put("records", dtoToMap(list));
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage);
		
		json.put("pagingString", pagingString);
		
		return json.toJSONString();
		
	}//////////
	
	public List<Map> dtoToMap(List<StoreLocationDTO> list){
		
		List<Map> records = new Vector<>();
		
		for(StoreLocationDTO dto : list) {
			Map data = new HashMap();
			
			data.put("bizesid", dto.getBizesid());
			data.put("bizesnm", dto.getBizesnm());
			data.put("brchnm", dto.getBrchnm());
			data.put("dongno", dto.getDongno());
			data.put("flrno", dto.getFlrno());
			data.put("hono", dto.getHono());
			data.put("indssclscd", dto.getIndssclscd());
			data.put("indssclsnm", dto.getIndssclsnm());
			data.put("lat", dto.getLat());
			data.put("lnoadr", dto.getLnoadr());
			data.put("lon", dto.getLon());
			data.put("rdnmadr", dto.getRdnmadr());
			
			records.add(data);
		}
		
		return records;
		
	}

}//////////////////// StoreController class
