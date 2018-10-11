package com.animal.aniwhere_back.web.where;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {

	@RequestMapping("/location/map.aw")
	public String load_map() throws Exception {
		return "/where/map.tiles";
	}////////// load_map
	
}//////////////////// MapController
