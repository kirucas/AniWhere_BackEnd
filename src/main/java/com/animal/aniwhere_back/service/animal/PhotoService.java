package com.animal.aniwhere_back.service.animal;

import java.util.List;
import java.util.Map;

import com.animal.aniwhere_back.service.AllBoardService;

public interface PhotoService extends AllBoardService {
	
	List<Map> linkSelectList(Map map);
	
	void linkInsert(Map map);
	void linkUpdate(Map map);
	void linkDelete(Map map);
	
}//////////////////// PhotoService interface
