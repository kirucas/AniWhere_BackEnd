package com.animal.aniwhere_back.web.miss;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

}//////////////////// SeeController class
