package com.animal.aniwhere_back.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class StatisticsService {

	@Resource(name = "statisticsDAO")
	private StatisticsDAO dao;

	public int createCountingRow(Map map) {
		return dao.createCountingRow(map);
	}////////// createCountingRow

	public int todayVisitCount(Map map) {
		return dao.todayVisitCount(map);
	}////////// todayVisitCount

	public int todayAllBoardCount(Map map) {
		return dao.todayAllBoardCount(map);
	}////////// todayAllBoardCount

	public int allMemberCount() {
		return dao.allMemberCount();
	}////////// allMemberCount

	public int allVisitor() {
		return dao.allVisitor();
	}////////// allVisitor

	public int allLostAnimal() {
		return dao.allLostAnimal();
	}////////// allLostAnimal

	public int allBoardCount() {
		return dao.allBoardCount();
	}////////// allBoardCount

	public List<Map> allVisitCount() {
		return dao.allVisitCount();
	}////////// allVisitCount

	public List<Map> allBoardRegiCount() {
		return dao.allBoardRegiCount();
	}////////// allBoardRegiCount

	public List<Map> animalCategoryCount() {
		return dao.animalCategoryCount();
	}////////// animalCategoryCount

	public List<Map> allReservationStatis() {
		return dao.allReservationStatis();
	}////////// allReservationStatis

}//////////////////// StatisticsService class
