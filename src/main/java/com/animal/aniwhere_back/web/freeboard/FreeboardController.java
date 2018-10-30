package com.animal.aniwhere_back.web.freeboard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.animal.aniwhere_back.service.animal.FreeBoardDTO;
import com.animal.aniwhere_back.service.impl.animal.FreeBoardServiceImpl;

@Controller
public class FreeboardController {

	@Resource(name = "freeService")
	private FreeBoardServiceImpl service;

	@RequestMapping("/freeboard.aw")
	public String freeboard(Model model) throws Exception {

		Map map = new HashMap();
		
		map.put("start", 1);
		map.put("end", service.getTotalRecord(map));
		
		List<FreeBoardDTO> list = service.selectList(map);

		model.addAttribute("list", list);

		return "board/animal/freeboard.tiles";
	}
}
