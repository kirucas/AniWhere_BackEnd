<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
    h4 {
        font-family: 메이플스토리;
    }
</style>

<div class="row">
	<div class="col-12 grid-margin">
		<div class="card card-statistics">
			<div class="row">
				<div class="card-col col-xl-3 col-lg-3 col-md-3 col-6">
					<div class="card-body"> <!-- 회원이 등록 한 동물 수 -->
						<div class="d-flex align-items-center justify-content-center flex-column flex-sm-row">
							<i class="mdi mdi-paw text-primary mr-0 mr-sm-4 icon-lg"></i>
							<div class="wrapper text-center text-sm-left">
								<p class="card-test mb-0">등록 된 동물 수</p>
								<div class="fluid-container">
									<h3 class="card-title mb-0">${registerAnimal} 마리</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card-col col-xl-3 col-lg-3 col-md-3 col-6">
					<div class="card-body"> <!-- 신규로 등록 된 동물 수 -->
						<div class="d-flex align-items-center justify-content-center flex-column flex-sm-row">
							<i class="fa fa-edit text-primary mr-0 mr-sm-4 icon-lg"></i>
							<div class="wrapper text-center text-sm-left">
								<p class="card-test mb-0">오늘 등록 된 동물 수</p>
								<div class="fluid-container">
									<h3 class="card-title mb-0">${todayRegisterAni} 마리</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card-col col-xl-3 col-lg-3 col-md-3 col-6">
					<div class="card-body"> <!-- 회원 한 명이 평균 등록하는 동물 수 -->
						<div class="d-flex align-items-center justify-content-center flex-column flex-sm-row">
							<i class="fa fa-link text-primary mr-0 mr-sm-4 icon-lg"></i>
							<div class="wrapper text-center text-sm-left">
								<p class="card-test mb-0">한 명이 평균 등록하는 동물 수</p>
								<div class="fluid-container">
									<h3 class="card-title mb-0">${averageAnimal} 마리</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card-col col-xl-3 col-lg-3 col-md-3 col-6">
					<div class="card-body"> <!-- 저장 된 상가 정보 수 -->
						<div class="d-flex align-items-center justify-content-center flex-column flex-sm-row">
							<i class="fa fa-map-marker text-primary mr-0 mr-sm-4 icon-lg"></i>
							<div class="wrapper text-center text-sm-left">
								<p class="card-test mb-0">저장 된 상가 정보 수</p>
								<div class="fluid-container">
									<h3 class="card-title mb-0">${registerStore} 개</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-------------------------------------------------------------------------------------------------------------------->
	<div class="col-12 grid-margin">
		<div class="card card-statistics">
			<div class="row">
				<div class="card-col col-xl-3 col-lg-3 col-md-3 col-6">
					<div class="card-body"> <!-- 회원이 등록 한 동물 수 -->
						<div class="d-flex align-items-center justify-content-center flex-column flex-sm-row">
							<i class="mdi mdi-paw text-primary mr-0 mr-sm-4 icon-lg"></i>
							<div class="wrapper text-center text-sm-left">
								<p class="card-test mb-0">등록 된 유기동물 수</p>
								<div class="fluid-container">
									<h3 class="card-title mb-0">${registerLostAnimal} 마리</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card-col col-xl-3 col-lg-3 col-md-3 col-6">
					<div class="card-body"> <!-- 신규로 등록 된 동물 수 -->
						<div class="d-flex align-items-center justify-content-center flex-column flex-sm-row">
							<i class="mdi mdi-checkbox-marked-circle-outline text-primary mr-0 mr-sm-4 icon-lg"></i>
							<div class="wrapper text-center text-sm-left">
								<p class="card-test mb-0">오늘 등록 된 유기동물 수(12시에 갱신)</p>
								<div class="fluid-container">
									<h3 class="card-title mb-0">${todayRegisterLost} 마리</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card-col col-xl-3 col-lg-3 col-md-3 col-6">
					<div class="card-body"> <!-- 회원 한 명이 평균 등록하는 동물 수 -->
						<div class="d-flex align-items-center justify-content-center flex-column flex-sm-row">
							<i class="fa fa-heart-o text-primary mr-0 mr-sm-4 icon-lg"></i>
							<div class="wrapper text-center text-sm-left">
								<p class="card-test mb-0">매칭을 신청 한 동물 수</p>
								<div class="fluid-container">
									<h3 class="card-title mb-0">${applyMating} 마리</h3>
								</div> 
							</div>
						</div>
					</div>
				</div>
				<div class="card-col col-xl-3 col-lg-3 col-md-3 col-6">
					<div class="card-body"> <!-- 저장 된 상가 정보 수 -->
						<div class="d-flex align-items-center justify-content-center flex-column flex-sm-row">
							<i class="fa fa-heart text-primary mr-0 mr-sm-4 icon-lg"></i>
							<div class="wrapper text-center text-sm-left">
								<p class="card-test mb-0">매칭이 성사 된 수</p>
								<div class="fluid-container">
									<h3 class="card-title mb-0">${matingSuccess} 회</h3>
								</div>
							</div>
						</div>
					</div>                                                                                                             
				</div>
			</div>
		</div>
	</div>
</div>
<!-------------------------------------------------------------------------------------------------------------------->
<div class="row">
	<div class="col-lg-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">카테고리별 등록 된 동물 수</h4>
				<canvas id="categoryAnimal" style="width:230px;"></canvas>
			</div>
		</div>
	</div>
	<div class="col-lg-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">유기동물 분류 별 등록 수</h4>
				<canvas id="categoryLost" style="width:230px;"></canvas>
			</div>
		</div>
	</div>
</div>
<!-------------------------------------------------------------------------------------------------------------------->
<div class="row">
	<div class="col-lg-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">분류 별 저장 된 상가 정보 수</h4>
				<canvas id="categoryStore" style="width:230px;"></canvas>
			</div>
		</div>
	</div>
	<div class="col-lg-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">카테고리별 매칭 신청 수</h4>
				<canvas id="categoryMating" style="width:230px;"></canvas>
			</div>
		</div>
	</div>
</div>
<!-------------------------------------------------------------------------------------------------------------------->
<div class="row">
	<div class="col-lg-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">매칭 수락/거부율</h4>
				<div class="google-chart-container">
					<div id="matingDrafting" class="google-charts"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">카테고리 별 매칭 수락/거부율</h4>
				<canvas id="categoryDrafting" style="width:230px;"></canvas>
			</div>
		</div>
	</div>
</div>
<!-------------------------------------------------------------------------------------------------------------------->
<div class="row">
	<div class="col-md-12 grid-margin">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">${today} 오늘의 입양 동물</h3>
			</div>
			<div class="card-body">
				<div class="row">
					<div class="col-md-5 d-flex align-items-center">
						<img class="img-fluid rounded" src="${lost_data.img_src}" />
					</div>
					<div class="col-md-7">
						<ul class="list-arrow">
							<li><span class="display-4">품종 : ${lost_data.kind}</span></li>
							<li><span class="display-4">기관명 : ${lost_data.carenm}</span></li>
							<li><span class="display-4">기관 주소 : ${lost_data.addr}</span></li>
							<li><span class="display-4">기관 전화번호 : ${lost_data.caretel}</span></li>
							<li><span class="display-4">공고 종료일 : ${lost_data.end_notice}</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>