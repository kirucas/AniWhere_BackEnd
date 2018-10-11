package com.animal.aniwhere_back.web.where;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {
	
	@RequestMapping("/where/reservation.aw")
	public String reservation() throws Exception {
		return "where/reservation.tiles";
	}
}
