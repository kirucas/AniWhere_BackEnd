package com.animal.aniwhere_back.web.market.sell;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SellController {
	
	@RequestMapping("/sell.aw")
	public String dog_main() throws Exception {
		return "market/sell.tiles";
	}
}
