package com.animal.aniwhere_back.web.statistics;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StatisticsController {
	
	@RequestMapping("/statistics.aw")
	public String statistics() throws Exception {
		return "statistics/statistics.tiles";
	}
}
