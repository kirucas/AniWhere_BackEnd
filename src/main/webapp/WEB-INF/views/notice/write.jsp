<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
	<div class="col-md-10 offset-md-1 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">공지사항</h4>
				<form action="<c:url value='/notice/write.aw' />" method="post">
					<div class="form-group">
						<input type="text" class="form-control" name="title" />
					</div>
					<div class="form-group">
						<textarea class="form-control" id="summernote" name="content"></textarea>
					</div>
					<button type="submit" class="btn btn-success mr-2">등록</button>
				</form>
			</div>
		</div>
	</div>
</div>