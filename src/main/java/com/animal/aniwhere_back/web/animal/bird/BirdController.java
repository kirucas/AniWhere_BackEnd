package com.animal.aniwhere_back.web.animal.bird;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BirdController {
	
	@RequestMapping("/bird/main.aw")
	public String dog_main() throws Exception {
		return "board/animal/birdMain.tiles";
	}
}
