package com.animal.aniwhere_back.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.AllCommentDTO;
import com.animal.aniwhere_back.service.AllCommentService;

@Repository
public class AllCommentDAO implements AllCommentService {

	@Resource(name = "template")
	private SqlSessionTemplate template;

	@Override
	public List<AllCommentDTO> selectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}////////// selectList

	@Override
	public void insert(Map map) {
		// TODO Auto-generated method stub

	}////////// insert

	@Override
	public void update(Map map) {
		// TODO Auto-generated method stub

	}////////// update

	@Override
	public void delete(Map map) {
		// TODO Auto-generated method stub

	}////////// delete

	@Override
	public int commentCount(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}////////// commentCount

}//////////////////// AllCommentDAO class
