package com.animal.aniwhere_back.service.impl.animal;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.AllBoardService;
import com.animal.aniwhere_back.service.animal.MovieBoardDTO;

@Repository
public class MovieBoardDAO implements AllBoardService {

	@Resource(name = "template")
	private SqlSessionTemplate template;

	@Override
	public List<MovieBoardDTO> selectList(Map map) {
		return template.selectList("movieSelectList", map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("movieCount", map);
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public MovieBoardDTO selectOne(Map map) {
		if(map.get("view") != null)
			template.update("addCountMovie", map);
		return template.selectOne("movieSelectOne", map);
	}////////// selectOne

	@Override
	public int insert(Map map) {
		return template.insert("movieInsert", map);
	}////////// insert

	@Override
	public int update(Map map) {
		return template.update("movieUpdate", map);
	}////////// update

	@Override
	public int delete(Map map) {
		return template.delete("movieDelete", map);
	}////////// delete

	@Override
	public int addHitCount(Map map) {
		return template.update("addHitCountMovie", map);
	}////////// addHitCount

}//////////////////// MovieBoardDAO class
