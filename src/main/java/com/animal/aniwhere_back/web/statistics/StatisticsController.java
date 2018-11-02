package com.animal.aniwhere_back.web.statistics;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.animal.aniwhere_back.service.impl.StatisticsService;

@Controller
public class StatisticsController {

	@Resource(name = "statisticsService")
	private StatisticsService service;

	@RequestMapping("/statistics.aw")
	public String statistics() throws Exception {
		return "statistics/statistics.tiles";
	}////////// statistics

	public String changeMonthFormat(String numMonth) {
		switch (numMonth) {
		case "1":
			return "jan";
		case "2":
			return "feb";
		case "3":
			return "mar";
		case "4":
			return "apr";
		case "5":
			return "may";
		case "6":
			return "jun";
		case "7":
			return "jul";
		case "8":
			return "aug";
		case "9":
			return "sep";
		case "10":
			return "oct";
		case "11":
			return "nov";
		default:
			return "dec";
		}
	}////////// changeMonthFormat

	public String changeCategoryFormat(String numCategory) {
		switch (numCategory) {
		case "1":
			return "dog";
		case "2":
			return "cat";
		case "3":
			return "rna";
		case "4":
			return "bird";
		default:
			return "etc";
		}
	}////////// changeCategoryFormat

	@ResponseBody
	@RequestMapping(value = "/statis/boardregi.awa", produces = "text/plain; charset=UTF-8")
	public String allBoardRegiCount() throws Exception {

		List<Map> list = service.allBoardRegiCount();

		JSONObject json = new JSONObject();

		for (Map map : list) {
			json.put(changeMonthFormat(map.get("REGIDATE").toString()), map.get("SUM"));
		}

		return json.toJSONString();

	}////////// allBoardRegiCount

	@ResponseBody
	@RequestMapping(value = "/statis/anicategory.awa", produces = "text/plain; charset=UTF-8")
	public String animalCategoryCount() throws Exception {

		List<Map> list = service.animalCategoryCount();

		JSONObject json = new JSONObject();

		for(Map map : list) {
			json.put(changeCategoryFormat(map.get("CATEGORY").toString()), map.get("SUM"));
		}
		
		return json.toJSONString();

	}////////// animalCategoryCount
	
	@ResponseBody
	@RequestMapping(value="/statis/reservation.awa", produces="text/plain; charset=UTF-8")
	public String allReservationStatis() throws Exception {
		
		List<Map> list = service.allReservationStatis();
		
		JSONObject json = new JSONObject();
		
		for(Map map : list) {
			json.put(changeMonthFormat(map.get("MONTH").toString()), map.get("COUNT"));
		}
		
		return json.toJSONString();
		
	}////////// allReservationStatis

}//////////////////// StatisticsController class
