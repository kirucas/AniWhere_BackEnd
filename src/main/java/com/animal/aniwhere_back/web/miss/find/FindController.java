package com.animal.aniwhere_back.web.miss.find;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindController {
	
	@RequestMapping("/miss/find.aw")
	public String find() throws Exception {
		return "miss/find.tiles";
	}
	
}
