package com.animal.aniwhere_back.web.miss.find;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.animal.aniwhere_back.service.impl.miss.FindSeeServiceImpl;
import com.animal.aniwhere_back.service.miss.FindSeeDTO;

@Controller
public class FindController {
	
	@Resource
	private FindSeeServiceImpl fsservice;
	
	@RequestMapping("/miss/find.aw")
	public String find(Model model) throws Exception {
		Map map = new HashMap();
		map.put("start", 1);
		map.put("end", fsservice.getTotalRecord(map));
		List<FindSeeDTO> list = fsservice.selectList(map);
		model.addAttribute("flist",list);
		return "miss/find.tiles";
	}
	
}
