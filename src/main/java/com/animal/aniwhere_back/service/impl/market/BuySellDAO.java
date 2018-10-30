package com.animal.aniwhere_back.service.impl.market;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.animal.aniwhere_back.service.AllCommonService;
import com.animal.aniwhere_back.service.market.BuySellDTO;

@Repository
public class BuySellDAO implements AllCommonService {

	@Resource(name = "template")
	private SqlSessionTemplate template;
	
	@Override
	public List<BuySellDTO> selectList(Map map) {
		return template.selectList("bsSelectList", map);
	}////////// selectList

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("bsCount", map);
	}////////// getTotalRecord

	@SuppressWarnings("unchecked")
	@Override
	public BuySellDTO selectOne(Map map) {
		if(map.get("view") != null)
			template.update("addCountBS", map);
		return template.selectOne("bsSelectOne", map);
	}////////// selectOne

	@Override
	public int insert(Map map) {
		return template.insert("bsInsert", map);
	}////////// insert

	@Override
	public int update(Map map) {
		return template.update("bsUpdate", map);
	}////////// update

	@Override
	public int delete(Map map) {
		return template.delete("bsDelete", map);
	}////////// delete

}//////////////////// BuyDAO class
