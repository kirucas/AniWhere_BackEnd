package com.animal.aniwhere_back.service.impl;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StatisticsDAO {

	@Resource(name = "template")
	private SqlSessionTemplate template;

	
	
}//////////////////// StatisticsDAO class
