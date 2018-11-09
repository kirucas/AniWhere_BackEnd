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
	@RequestMapping(value = "/statistics/categoryAnimalCount.awa", produces = "text/plain; charset=UTF-8")
	public String categoryAnimalCount() throws Exception {

		List<Map> list = service.categoryAnimalCount();

		JSONObject json = new JSONObject();

		json.put("list", list);

		return json.toJSONString();

	}////////// categoryAnimalCount

	@ResponseBody
	@RequestMapping(value = "/statistics/categoryLostCount.awa", produces = "text/plain; charset=UTF-8")
	public String categoryLostCount() throws Exception {

		List<Map> list = service.categoryLostCount();

		JSONObject json = new JSONObject();

		json.put("list", list);

		return json.toJSONString();

	}////////// categoryLostCount

	@ResponseBody
	@RequestMapping(value = "/statistics/categoryStoreCount.awa", produces = "text/plain; charset=UTF-8")
	public String categoryStoreCount() throws Exception {

		List<Map> list = service.categoryStoreCount();

		JSONObject json = new JSONObject();

		json.put("list", list);

		return json.toJSONString();

	}////////// categoryStoreCount

	@ResponseBody
	@RequestMapping(value = "/statistics/categoryMatingCount.awa", produces = "text/plain; charset=UTF-8")
	public String categoryMatingCount() throws Exception {

		List<Map> list = service.categoryMatingCount();

		JSONObject json = new JSONObject();

		json.put("list", list);

		return json.toJSONString();

	}////////// categoryMatingCount

	@ResponseBody
	@RequestMapping(value = "/statistics/matingDraftingRate.awa", produces = "text/plain; charset=UTF-8")
	public String matingDraftingRate() throws Exception {

		List<Map> list = service.matingDraftingRate();
		
		JSONObject json = new JSONObject();
		
		json.put("list", list);
		
		return json.toJSONString();
		
	}////////// matingDraftingRate
	
	@ResponseBody
	@RequestMapping(value="/statistics/categoryDraftingCount.awa", produces="text/plain; charset=UTF-8")
	public String categoryDraftingCount() throws Exception {
		
		List<Map> list = service.categoryDraftingCount();
		
		JSONObject json = new JSONObject();
		
		json.put("list", list);
		
		return json.toJSONString();
		
	}////////// categoryDraftingCount

}//////////////////// StatisticsController class
