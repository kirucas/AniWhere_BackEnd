package com.animal.aniwhere_back.web.statistics;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RestController;

import com.animal.aniwhere_back.service.impl.StatisticsService;

@RestController
public class StatisticsController {

	@Resource(name = "statisticsService")
	private StatisticsService service;

	

}//////////////////// StatisticsController class
