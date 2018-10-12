package com.animal.aniwhere_back.service.impl.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.member.AdministratorDTO;
import com.animal.aniwhere_back.service.member.AllMemberService;

@Repository("adminDAO")
public class AdministratorDAO implements AllMemberService {

	@Resource(name = "template")
	private SqlSessionTemplate template;
	
	@Override
	public List<AdministratorDTO> selectList(Map map) {
		return template.selectList("adminSelectList", map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return 0;
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public AdministratorDTO selectOne(Map map) {
		return template.selectOne("adminSelectOne", map);
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

	@Override
	public boolean isMember(Map map) {
		return (Integer)template.selectOne("adminMemberCheck", map) == 1 ? true : false;
	}////////// isMember

}//////////////////// AdministratorDAO class
