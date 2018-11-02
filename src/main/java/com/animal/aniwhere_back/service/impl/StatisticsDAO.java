package com.animal.aniwhere_back.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StatisticsDAO {

	@Resource(name = "template")
	private SqlSessionTemplate template;

	public int createCountingRow(Map map) {
		return template.insert("createCountingRow", map);
	}////////// createCountingRow

	public int todayVisitCount(Map map) {
		return template.selectOne("todayVisitCount", map);
	}////////// todayVisitCount

	public int todayAllBoardCount(Map map) {
		return template.selectOne("todayAllBoardCount", map);
	}////////// todayAllBoardCount

	public int allMemberCount() {
		return template.selectOne("allMemberCount");
	}////////// allMemberCount

	public int allVisitor() {
		return template.selectOne("allVisitor");
	}////////// allVisitor

	public int allLostAnimal() {
		return template.selectOne("allLostAnimal");
	}////////// allLostAnimal

	public int allBoardCount() {
		return template.selectOne("allBoardCount");
	}////////// allBoardCount

	public List<Map> allVisitCount() {
		return template.selectList("allVisitCount");
	}////////// allVisitCount

	public List<Map> allBoardRegiCount() {
		return template.selectList("allBoardRegiCount");
	}////////// allBoardRegiCount

	public List<Map> animalCategoryCount() {
		return template.selectList("animalCategoryCount");
	}////////// animalCategoryCount

	public List<Map> allReservationStatis() {
		return template.selectList("allReservationStatis");
	}////////// allReservationStatis

}//////////////////// StatisticsDAO class
