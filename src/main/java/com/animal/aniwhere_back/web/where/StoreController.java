package com.animal.aniwhere_back.web.where;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StoreController {
	
	@RequestMapping("/where/store.aw")
	public String store() throws Exception {
		return "where/store.tiles";
	}
}
