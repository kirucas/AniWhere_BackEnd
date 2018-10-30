package com.animal.aniwhere_back.web.miss.shelter;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.animal.aniwhere_back.service.impl.miss.LostAnimalServiceImpl;

@Controller
public class ShelterController {
	
	@Resource(name="lostAniService")
	private LostAnimalServiceImpl shelterService;
	
	@RequestMapping("/miss/shelter.aw")
	public String shelter() throws Exception {
		return "miss/shelter.tiles";
	}
	
}
