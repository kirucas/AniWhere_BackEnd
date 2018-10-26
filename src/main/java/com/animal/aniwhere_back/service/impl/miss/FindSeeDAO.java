package com.animal.aniwhere_back.service.impl.miss;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.AllBoardService;
import com.animal.aniwhere_back.service.miss.FindSeeDTO;

@Repository
public class FindSeeDAO implements AllBoardService {

	@Resource(name = "template")
	private SqlSessionTemplate template;
	
	@Override
	public List<FindSeeDTO> selectList(Map map) {
		return template.selectList("fsSelectList", map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("fsCount", map);
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public FindSeeDTO selectOne(Map map) {
		return template.selectOne("fsSelectOne", map);
	}////////// selectOne

	@Override
	public int insert(Map map) {
		return template.insert("fsInsert", map);
	}////////// insert

	@Override
	public int update(Map map) {
		return template.update("fsUpdate", map);
	}////////// update

	@Override
	public int delete(Map map) {
		return template.delete("fsDelete", map);
	}////////// delete

}//////////////////// FindDAO class
