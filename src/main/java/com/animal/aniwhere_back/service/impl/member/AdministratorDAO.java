package com.animal.aniwhere_back.service.impl.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.AllBoardService;
import com.animal.aniwhere_back.service.member.AdministratorDTO;

@Repository("AdminDAO")
public class AdministratorDAO implements AllBoardService {

	@Resource(name = "template")
	private SqlSessionTemplate template;
	
	@Override
	public List<AdministratorDTO> selectList(Map map) {
		return null;
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return 0;
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public AdministratorDTO selectOne(Map map) {
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

}//////////////////// AdministratorDAO class
