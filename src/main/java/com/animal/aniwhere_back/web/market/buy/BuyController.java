package com.animal.aniwhere_back.web.market.buy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuyController {
	
	@RequestMapping("/market/buy.aw")
	public String buy() throws Exception {
		return "market/buy.tiles";
	}
}
