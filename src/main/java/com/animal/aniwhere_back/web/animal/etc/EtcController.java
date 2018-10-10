package com.animal.aniwhere_back.web.animal.etc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EtcController {
	
	@RequestMapping("/etc/main.aw")
	public String dog_main() throws Exception {
		return "board/animal/etcMain.tiles";
	}
}
