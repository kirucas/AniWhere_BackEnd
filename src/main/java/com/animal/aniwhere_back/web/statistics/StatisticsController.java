package com.animal.aniwhere_back.web.statistics;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.animal.aniwhere_back.service.impl.StatisticsService;

@RestController
public class StatisticsController {

	@Resource(name = "statisticsService")
	private StatisticsService service;

	@ResponseBody
	@RequestMapping(value="/statistics/categoryAnimalCount.awa", produces="text/plain; charset=UTF-8")
	public String categoryAnimalCount() throws Exception {
		
		List<Map> list = service.categoryAnimalCount();
		
		JSONObject json = new JSONObject();
		
		json.put("list", list);
		
		return json.toJSONString();
	}////////// categoryAnimalCount

}//////////////////// StatisticsController class
