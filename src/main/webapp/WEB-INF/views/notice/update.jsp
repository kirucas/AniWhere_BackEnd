<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-md-10 offset-md-1 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">공지사항 수정</h4>
				<form action="<c:url value='/notice/update.aw' />" method="post">
					<input type="hidden" name="no" value="${dto.no}" />
					<input type="hidden" name="am_no" value="${dto.am_no }" />
					<div class="form-group">
						<input type="text" class="form-control" name="title" value="${dto.title}" />
					</div>
					<div class="form-group">
						<textarea class="form-control" id="summernote" name="content">${dto.content}</textarea>
					</div>
					<button type="submit" class="btn btn-success mr-2">수정</button>
				</form>
			</div>
		</div>
	</div>
</div>