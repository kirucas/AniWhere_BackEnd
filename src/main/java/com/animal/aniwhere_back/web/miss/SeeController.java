package com.animal.aniwhere_back.web.miss;

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
import com.animal.aniwhere_back.service.impl.miss.FindSeeServiceImpl;
import com.animal.aniwhere_back.service.miss.FindSeeDTO;

@Controller
public class SeeController {

	private static final String TABLE_NAME = "see";

	@Resource(name = "findSeeService")
	private FindSeeServiceImpl service;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/miss/see.aw")
	public String see(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			Model model) throws Exception {

		map.put("table_name", TABLE_NAME);
		
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);
		
		List<FindSeeDTO> list = service.selectList(map);
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, "find.aw?");
		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		
		return "miss/see.tiles";
	}////////// see
	
	@ResponseBody
	@RequestMapping(value="/miss/see_delete.awa", produces="text/plain; charset=UTF-8")
	public String see_delete(@RequestParam Map map) throws Exception {
		
		map.put("table_name", TABLE_NAME);
		
		int affected = service.delete(map);
		
		JSONObject json = new JSONObject();
		
		if(affected == 1)
			json.put("result", "success");
		else
			json.put("result", "fail");
		
		return json.toJSONString();			
		
	}////////// see_delete

}//////////////////// SeeController class
