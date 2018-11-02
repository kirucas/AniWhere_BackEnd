package com.animal.aniwhere_back.web.animal;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.animal.FreeBoardDTO;
import com.animal.aniwhere_back.service.impl.animal.FreeBoardServiceImpl;

@Controller
public class FreeboardController {

	@Resource(name = "freeService")
	private FreeBoardServiceImpl service;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/freeboard.aw")
	public String freeboard(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			Model model) throws Exception {

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;

		map.put("start", start);
		map.put("end", end);

		List<FreeBoardDTO> list = service.selectList(map);

		for(FreeBoardDTO dto : list) {
			dto.setFree_category(changeCategoryFormat(dto.getFree_category()));
		}
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, "freeboard.aw?");
		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);

		return "board/animal/freeboard.tiles";
	}
	
	public String changeCategoryFormat(String numCategory) {
		switch(numCategory) {
		case "1": return "잡담";
		case "2": return "정보";
		case "3": return "유머";
		case "4": return "이슈";
		default: return "시사";
		}
	}
	
}
