package com.animal.aniwhere_back.web.miss;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.impl.miss.LostAnimalServiceImpl;
import com.animal.aniwhere_back.service.miss.LostAnimalDTO;

@Controller
public class ShelterController {

	@Resource(name = "lostAniService")
	private LostAnimalServiceImpl service;
	
	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/miss/shelter.aw")
	public String shelter(@RequestParam Map map, Model model) throws Exception {

		int nowPage = map.get("nowPage") == null ? 1 : Integer.parseInt(map.get("nowPage").toString());

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);

		List<LostAnimalDTO> list = service.selectList(map);
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, "shelter.aw?");
		
		model.addAttribute("shelter_list", list);
		model.addAttribute("pagingString", pagingString);
		
		return "miss/shelter.tiles";
	}////////// shelter
	
	@ResponseBody
	@RequestMapping(value="/miss/passDateOnNotice.awa", produces = "text/plain; charset=UTF-8")
	public String passDateOnNotice() throws Exception {

		Map map = new HashMap();
		
		map.put("today", new java.sql.Date(new java.util.Date().getTime()));
		
		int affected = service.passDateOnNotice(map);
		
		JSONObject json = new JSONObject();
		
		json.put("affected", affected + "행");
		
		return json.toJSONString();
	}

}//////////////////// ShelterController
