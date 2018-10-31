package com.animal.aniwhere_back.web.miss;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.animal.aniwhere_back.service.impl.miss.LostAnimalServiceImpl;
import com.animal.aniwhere_back.service.miss.LostAnimalDTO;

@Controller
public class ShelterController {
	
	@Resource(name="lostAniService")
	private LostAnimalServiceImpl shelterService;
	
	@RequestMapping("/miss/shelter.aw")
	public String shelter(Model model) throws Exception {
		Map map = new HashMap();
		map.put("start", 1);
		map.put("end", shelterService.getTotalRecord(map));
		List<LostAnimalDTO> list = shelterService.selectList(map);
		model.addAttribute("shelter_list", list);
		return "miss/shelter.tiles";
	}
	
}
