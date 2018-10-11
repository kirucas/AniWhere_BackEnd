package com.animal.aniwhere_back.web.miss.see;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SeeController {
	
	@RequestMapping("/miss/see.aw")
	public String see() throws Exception {
		return "miss/see.tiles";
	}
	
}
