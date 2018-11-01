<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-lg-10 offset-lg-1 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">공지사항</h4>
				<div style="width: 100%">
					<form method="post"
						action="<c:url value='/animal/freeboard/write.aw'/>">
						<div class="form-group form-row">
							<div class="form-row" style="width: 87.5%;" id="titlediv">
								<input type="text" class="form-control" id="title" name="title"
									placeholder="제목을 입력하세요">
							</div>
						</div>
						<div class="form-group form-row">
							<div style="width: 100%">
								<textarea rows="10" class="form-control" id="summernote"
									name="content"></textarea>
							</div>
						</div>
						<div class="form-group form-row">
							<div class="col-sm-offset-2">
								<a href="<c:url value='/notice.aw'/>">
									<button class="btn btn-primary btn-fw">등록</button>
								</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 내용 끝 -->