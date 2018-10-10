package com.animal.aniwhere_back.web.miss.shelter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShelterController {
	
	@RequestMapping("/miss/shelter.aw")
	public String shelter() throws Exception {
		return "miss/shelter.tiles";
	}
	
}
