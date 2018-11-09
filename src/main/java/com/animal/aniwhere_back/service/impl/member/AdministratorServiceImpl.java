package com.animal.aniwhere_back.service.impl.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.animal.aniwhere_back.service.member.AdministratorDTO;
import com.animal.aniwhere_back.service.member.AllMemberService;

@Service("adminService")
public class AdministratorServiceImpl implements AllMemberService {

	@Resource(name = "adminDAO")
	private AdministratorDAO dao;
	
	@Override
	public List<AdministratorDTO> selectList(Map map) {
		return dao.selectList(map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public AdministratorDTO selectOne(Map map) {
		return dao.selectOne(map);
	}////////// selectOne

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}////////// insert

	@Override
	public int update(Map map) {
		return dao.update(map);
	}////////// update

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}////////// delete

	@Override
	public boolean isMember(Map map) {
		return dao.isMember(map);
	}////////// isMember

}//////////////////// AdministratorServiceImpl class
