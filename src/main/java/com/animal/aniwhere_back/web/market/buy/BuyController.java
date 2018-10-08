package com.animal.aniwhere_back.web.market.buy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuyController {
	
	@RequestMapping("/buy.aw")
	public String dog_main() throws Exception {
		return "market/buy.tiles";
	}
}
