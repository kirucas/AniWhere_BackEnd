package com.animal.aniwhere_back.web.freeboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FreeboardController {
	
	@RequestMapping("/freeboard.aw")
	public String freeboard() throws Exception {
		return "board/animal/freeboard.tiles";
	}
}
