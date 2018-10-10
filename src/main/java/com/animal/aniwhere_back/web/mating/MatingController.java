package com.animal.aniwhere_back.web.mating;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MatingController {
	
	@RequestMapping("/mating.aw")
	public String mating() throws Exception {
		return "mating/mating.tiles";
	}
	
}
