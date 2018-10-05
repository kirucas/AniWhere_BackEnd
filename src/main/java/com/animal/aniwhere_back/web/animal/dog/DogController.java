package com.animal.aniwhere_back.web.animal.dog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DogController {
	
	@RequestMapping("/dog/main.aw")
	public String dog_main() throws Exception {
		return "board/animal/dogMain.tiles";
	}
}
