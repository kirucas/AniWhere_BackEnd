package com.animal.aniwhere_back.web.market.groupbuy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroupBuyController {
	
	@RequestMapping("/market/groupbuy.aw")
	public String groupbuy() throws Exception {
		return "market/groupbuy.tiles";
	}
}
