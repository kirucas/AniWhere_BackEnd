package com.animal.aniwhere_back.service.impl.market;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.AllBoardService;
import com.animal.aniwhere_back.service.market.GroupBuyingListDTO;

@Repository
public class GroupBuyingListDAO implements AllBoardService {

	@Resource(name = "template")
	private SqlSessionTemplate template;

	@Override
	public List<GroupBuyingListDTO> selectList(Map map) {
		return template.selectList("buyingSelectList", map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("buyingCount", map);
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public GroupBuyingListDTO selectOne(Map map) {
		return template.selectOne("buyingSelectOne", map);
	}////////// selectOne

	@Override
	public int insert(Map map) {
		return template.insert("buyingInsert", map);
	}////////// insert

	@Override
	public int update(Map map) {
		return template.update("buyingUpdate", map);
	}////////// update

	@Override
	public int delete(Map map) {
		return template.delete("buyingDelete", map);
	}////////// delete

}//////////////////// GroupBuyingListDAO class
