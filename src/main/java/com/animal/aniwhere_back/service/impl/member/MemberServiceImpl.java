package com.animal.aniwhere_back.service.impl.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.animal.aniwhere_back.service.AllBoardService;
import com.animal.aniwhere_back.service.member.MemberDTO;

@Service("MemberService")
public class MemberServiceImpl implements AllBoardService {

	@Resource(name = "MemberDAO")
	private MemberDAO dao;
	
	@Override
	public List<MemberDTO> selectList(Map map) {
		return dao.selectList(map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public MemberDTO selectOne(Map map) {
		return dao.selectOne(map);
	}////////// selectOne

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}//////////insert

	@Override
	public int update(Map map) {
		return dao.update(map);
	}////////// update

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}////////// delete

}//////////////////// MemberServiceImpl class
