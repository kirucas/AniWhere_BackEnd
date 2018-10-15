package com.animal.aniwhere_back.service.impl.animal;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.AllBoardService;
import com.animal.aniwhere_back.service.animal.QuestBoardDTO;

@Repository
public class QuestBoardDAO implements AllBoardService {

	@Resource(name = "template")
	private SqlSessionTemplate template;
	
	@Override
	public List<QuestBoardDTO> selectList(Map map) {
		return template.selectList("questSelectList", map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("questCount", map);
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public QuestBoardDTO selectOne(Map map) {
		return template.selectOne("questSelectOne", map);
	}////////// selectOne

	@Override
	public int insert(Map map) {
		return template.insert("questInsert", map);
	}////////// insert

	@Override
	public int update(Map map) {
		return template.update("questUpdate", map);
	}////////// update

	@Override
	public int delete(Map map) {
		return template.delete("questDelete", map);
	}////////// delete

}//////////////////// QuestBoardDAO class
