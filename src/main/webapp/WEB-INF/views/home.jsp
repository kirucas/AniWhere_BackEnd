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
									<h3 class="card-title mb-0">15000</h3>
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
									<h3 class="card-title mb-0">15000</h3>
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
									<h3 class="card-title mb-0">15000</h3>
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
									<h3 class="card-title mb-0">15000</h3>
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
									<h3 class="card-title mb-0">15000</h3>
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
								<p class="card-test mb-0">오늘 등록 된 유기동물 수</p>
								<div class="fluid-container">
									<h3 class="card-title mb-0">15000</h3>
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
									<h3 class="card-title mb-0">15000</h3>
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
									<h3 class="card-title mb-0">15000</h3>
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
				<canvas id="" style="width:230px;"></canvas>
			</div>
		</div>
	</div>
</div>
<!-------------------------------------------------------------------------------------------------------------------->
<div class="row">
	<div class="col-lg-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">카테고리별 매칭 신청 수</h4>
				<canvas id="" style="width:230px;"></canvas>
			</div>
		</div>
	</div>
	<div class="col-lg-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">분류 별 저장 된 상가 정보 수</h4>
				<canvas id="" style="width:230px;"></canvas>
			</div>
		</div>
	</div>
</div>
<!-------------------------------------------------------------------------------------------------------------------->
<div class="row">
	<div class="col-lg-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">매칭 수락/거부 율</h4>
				<canvas id="" style="width:230px;"></canvas>
			</div>
		</div>
	</div>
	<div class="col-lg-6 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">카테고리 별 매칭 수락/거부율</h4>
				<canvas id="" style="width:230px;"></canvas>
			</div>
		</div>
	</div>
</div>