package com.animal.aniwhere_back.service.impl.animal;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.AllBoardService;
import com.animal.aniwhere_back.service.animal.TipBoardDTO;

@Repository
public class TipBoardDAO implements AllBoardService {

	@Resource(name = "template")
	private SqlSessionTemplate template;
	
	@Override
	public List<TipBoardDTO> selectList(Map map) {
		return template.selectList("tipSelectList", map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("tipCount", map);
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public TipBoardDTO selectOne(Map map) {
		if(map.get("view") != null)
			template.update("addCountTip", map);
		return template.selectOne("tipSelectOne", map);
	}////////// getTotalRecord

	@Override
	public int insert(Map map) {
		return template.insert("tipInsert", map);
	}////////// insert

	@Override
	public int update(Map map) {
		return template.update("tipUpdate", map);
	}////////// update

	@Override
	public int delete(Map map) {
		return template.delete("tipDelete", map);
	}////////// delete

	@Override
	public int addHitCount(Map map) {
		return template.update("addHitCountTip", map);
	}////////// addHitCount

}//////////////////// TipBoardDAO class
