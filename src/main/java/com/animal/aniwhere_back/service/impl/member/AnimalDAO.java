package com.animal.aniwhere_back.service.impl.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.AllCommonService;
import com.animal.aniwhere_back.service.member.AnimalDTO;

@Repository
public class AnimalDAO implements AllCommonService {

	@Resource(name = "template")
	private SqlSessionTemplate template;
	
	@Override
	public List<AnimalDTO> selectList(Map map) {
		return template.selectList("animalSelectList", map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("animalCount", map);
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public AnimalDTO selectOne(Map map) {
		return template.selectOne("animalSelectOne", map);
	}////////// selectOne

	@Override
	public int insert(Map map) {
		map.put("today", new java.sql.Date(new java.util.Date().getTime()));
		return template.insert("animalInsert", map);
	}////////// insert

	@Override
	public int update(Map map) {
		return template.update("animalUpdate", map);
	}////////// update

	@Override
	public int delete(Map map) {
		return template.delete("animalDelete", map);
	}////////// delete

}//////////////////// AnimalDAO class
