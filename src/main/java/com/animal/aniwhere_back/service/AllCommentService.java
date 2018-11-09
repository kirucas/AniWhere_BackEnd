package com.animal.aniwhere_back.service;

import java.util.List;
import java.util.Map;

public interface AllCommentService {

	// 목록용
	List<AllCommentDTO> selectList(Map map);

	// insert/delete/update
	void insert(Map map);

	void update(Map map);

	void delete(Map map);

	// 댓글 개수
	int commentCount(Map map);
	
	// 댓글 추천수 증가용
	int addHitCountComment(Map map);

}//////////////////// AllCommentService interface
