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
		return null;
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return 0;
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public MovieBoardDTO selectOne(Map map) {
		return null;
	}////////// selectOne

	@Override
	public int insert(Map map) {
		return 0;
	}////////// insert

	@Override
	public int update(Map map) {
		return 0;
	}////////// update

	@Override
	public int delete(Map map) {
		return 0;
	}////////// delete

}//////////////////// MovieBoardDAO class
