package com.animal.aniwhere_back.web.where;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.animal.aniwhere_back.service.PagingUtil;
import com.animal.aniwhere_back.service.ReservationDTO;
import com.animal.aniwhere_back.service.impl.ReservationServiceImpl;

@Controller
public class ReservationController {

	@Resource(name = "reservationService")
	private ReservationServiceImpl service;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	@RequestMapping("/where/reservation.aw")
	public String reservation(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			Model model) throws Exception {

		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		map.put("start", start);
		map.put("end", end);
		
		List<ReservationDTO> list = service.selectList(map);
		
		int totalRecordCount = service.getTotalRecord(map);
		
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, "reservation.aw?");
		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);

		return "where/reservation.tiles";

	}////////// reservation

}//////////////////// ReservationController class
