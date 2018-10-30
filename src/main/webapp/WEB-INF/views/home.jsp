<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--
<div class="row">
    <div class="col-12 grid-margin">
    <h1>
        Hello world!
    </h1>
    </div>
</div>
<div class="row">
    <div class="col-12 grid-margin">
        <P>The time on the server is ${serverTime}.</P>
        <a href="<c:url value='/sign_in.aw'/>">로그인 페이지</a>
    </div>
</div>
-->
<style>
	h4{
	font-family:메이플스토리;
	}
</style>
<div class="row">
    <div class="col-md-12 grid-margin">
        <div class="row">
            <div class="col-12 col-sm-6 col-md-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h2>19</h2>
                        <p class="text-gray">오늘의 방문자 수</p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h2>10</h2>
                        <p class="text-gray">오늘의 게시글 수</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
        	<div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card">
		        <div class="card">
		            <div class="card-body">
		                <div class="d-flex">
		                    <i class="mdi mdi-account-outline icon-lg"></i>
		                    <div class="d-flex flex-column ml-2">
		                        <span class="d-flex flex-column">
		                            <small class="mb-0">전체 회원수</small>
		                            <span class="font-weight-bold">30</span>
		                        </span>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		    
		    <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card">
		        <div class="card">
		            <div class="card-body">
		                <div class="d-flex">
		                    <i class="mdi mdi-earth icon-lg"></i>
		                    <div class="d-flex flex-column ml-2">
		                        <span class="d-flex flex-column">
		                            <small class="mb-0">전체 방문자</small>
		                            <span class="font-weight-bold">440</span>
		                        </span>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
        	<div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card">
		        <div class="card">
		            <div class="card-body">
		                <div class="d-flex">
		                    <i class="mdi mdi-shield-outline icon-lg"></i>
		                    <div class="d-flex flex-column ml-2">
		                        <span class="d-flex flex-column">
		                            <small class="mb-0">등록된 유기동물</small>
		                            <span class="font-weight-bold">74</span>
		                        </span>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		    <div class="col-12 col-sm-6 col-md-3 grid-margin stretch-card">
		        <div class="card">
		            <div class="card-body">
		                <div class="d-flex">
		                    <i class="mdi mdi-file-outline icon-lg"></i>
		                    <div class="d-flex flex-column ml-2">
		                        <span class="d-flex flex-column">
		                            <small class="mb-0">전체 게시글 등록수</small>
		                            <span class="font-weight-bold">25</span>
		                        </span>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		    
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">방문자 통계</h4>
                        <div class="col-md-12 grid-margin stretch-card">
			                    <div class="col-md-12">
				                    <div class="google-chart-container d-flex justify-content-center h-100">
				                      <div id="visitor-chart" class="google-charts"></div>
				                    </div>
			                    </div>
			              </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
        
        </div>
    </div>

    <div class="col-md-12 grid-margin">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <p class="text-gray">2018 10/29 입양해주세요</p>
                        <div class="col-md-12">
                        	<c:forEach items="${lost_one }" var="lostOne">
                        		<img src="${lostOne.img_src}" alt="이미지" style="width:100%">
            	                <h4 style="margin-top:20px">품종: ${lostOne.kind}</h4>
								<h4>기관주소: ${lostOne.addr}</h4>
								<h4>기관명: ${lostOne.careNm }</h4>
								<h4>기관전화번호: ${lostOne.careTel }</h4>
								<h4>공고 종료일: ${lostOne.end_notice }</h4>
							</c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
