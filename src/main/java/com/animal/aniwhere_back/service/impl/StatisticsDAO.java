package com.animal.aniwhere_back.service.impl;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StatisticsDAO {

	@Resource(name = "template")
	private SqlSessionTemplate template;

	
	
}//////////////////// StatisticsDAO class
/*
============== 통계 변경 사항===============

----------추가-----------

(2행 3열)

회원이 등록 한 동물 수 [count]

신규로 등록 된 동물 수 [count]

회원 한 명이 평균 등록하는 동물 수 [count]

저장 된 상가 정보 수 [count]

등록 된 유기동물 수 [count]

새로 등록 된 유기동물 수 [count]

매칭을 신청 한 동물 수 [count]

매칭이 성사 된 수 [count]
 

카테고리별 등록된 동물 수 [chart] - 갯수 고정 - 수치형

유기동물 분류 별 등록 수 (개/고양이/기타축종으로 분류 되어 있음 - 하드코딩이 아닌 쿼리로 처리 할 예정) [chart] - 수치형 

카테고리별 신청 수 [chart] - 수치형

분류 별 저장 된 상가 정보 수 [chart] - 수치형

매칭 수락/거부율 [chart] - 퍼센트

카테고리별 매칭 수락/거부율 [chart] - 퍼센트

 

----------삭제-----------

게시판 관련된 것 모두 삭제

statistics 페이지 삭제 (통계에 사용 된 xml/service/dao는 추가되는 애들에서 사용 할 것이므로 삭제 X)
*/