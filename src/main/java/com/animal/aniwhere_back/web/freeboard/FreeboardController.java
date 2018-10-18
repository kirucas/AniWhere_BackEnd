package com.animal.aniwhere_back.web.freeboard;

import java.util.List;

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

		List<FreeBoardDTO> list = service.selectList(null);

		model.addAttribute("list", list);

		return "board/animal/freeboard.tiles";
	}
}
