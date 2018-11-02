package com.animal.aniwhere_back.web.miss.see;

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
public class SeeController {
	
	@Resource
	private FindSeeServiceImpl fsservice;
	
	@RequestMapping("/miss/see.aw")
	public String see(Model model) throws Exception {
		Map map = new HashMap();
		map.put("start", 1);
		map.put("end", fsservice.getTotalRecord(map));
		List<FindSeeDTO> list = fsservice.selectList(map);
		model.addAttribute("slist",list);
		return "miss/see.tiles";
	}
	
}
