package com.animal.aniwhere_back.web.animal.cat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CatController {
	
	@RequestMapping("/cat/main.aw")
	public String cat_main() throws Exception {
		return "board/animal/catMain.tiles";
	}
}
