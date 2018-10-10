package com.animal.aniwhere_back.web.animal.rna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RnaController {
	
	@RequestMapping("/rna/main.aw")
	public String dog_main() throws Exception {
		return "board/animal/rnaMain.tiles";
	}
}
