package com.animal.aniwhere_back.web.where;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {
	
	@RequestMapping("/where/map.aw")
	public String map() throws Exception {
		return "where/map.tiles";
	}
}
