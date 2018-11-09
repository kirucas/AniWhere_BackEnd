package com.animal.aniwhere_back.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class StatisticsService {

	@Resource(name = "statisticsDAO")
	private StatisticsDAO dao;

	public int registerAnimal() {
		return dao.registerAnimal();
	}////////// register_Animal

	public int todayRegisterAni() {
		return dao.todayRegisterAni();
	}////////// todayRegisterAni

	public double averageAnimal() {
		return dao.averageAnimal();
	}////////// averageAnimal

	public int registerStore() {
		return dao.registerStore();
	}////////// registerStore

	public int registerLostAnimal() {
		return dao.registerLostAnimal();
	}////////// registerLostAnimal

	public int todayRegisterLost() {
		return dao.todayRegisterLost();
	}////////// todayRegisterLost

	public int applyMating() {
		return dao.applyMating();
	}////////// applyMating

	public int matingSuccess() {
		return dao.matingSuccess();
	}////////// matingSuccess

	public List<Map> categoryAnimalCount() {
		return dao.categoryAnimalCount();
	}////////// categoryAnimalCount

	public List<Map> categoryLostCount() {
		return dao.categoryLostCount();
	}////////// categoryLostCount

	public List<Map> categoryStoreCount() {
		return dao.categoryStoreCount();
	}////////// categoryStoreCount

	public List<Map> categoryMatingCount() {
		return dao.categoryMatingCount();
	}////////// categoryMatingCount

	public List<Map> matingDraftingRate() {
		return dao.matingDraftingRate();
	}////////// matingDraftingRate

	public List<Map> categoryDraftingCount() {
		return dao.categoryDraftingCount();
	}////////// categoryDraftingCount

}//////////////////// StatisticsService class
