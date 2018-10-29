package com.animal.aniwhere_back.service.impl.market;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.AllCommonService;
import com.animal.aniwhere_back.service.market.GroupBuyDTO;

@Repository
public class GroupBuyDAO implements AllCommonService {

	@Resource(name = "template")
	private SqlSessionTemplate template;
	
	@Override
	public List<GroupBuyDTO> selectList(Map map) {
		return template.selectList("groupbuySelectList", map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("groupbuyCount", map);
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public GroupBuyDTO selectOne(Map map) {
		template.update("addCountGroupBuy", map);
		return template.selectOne("groupbuySelectOne", map);
	}////////// selectOne

	@Override
	public int insert(Map map) {
		return template.insert("groupbuyInsert", map);
	}////////// insert

	@Override
	public int update(Map map) {
		return template.update("groupbuyUpdate", map);
	}////////// update

	@Override
	public int delete(Map map) {
		return template.delete("groupbuyDelete", map);
	}////////// delete

}//////////////////// GroupBuyDAO class
