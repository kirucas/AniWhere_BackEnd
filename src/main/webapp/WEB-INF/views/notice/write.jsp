<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	$(function() {
		$('#summernote').summernote({
			maxHeight:null,
			minHeight:null,
			height:630,
      	});
	});
</script>
<style>
@import url("https://talk.op.gg/css/app.css?id=43e12108193fdc5b2d34");
@media (max-width: 575.98px) {
	#titlediv {
		margin-top:16px;
		margin-left:1px;
		
	}
	#title{
		width:468.7px;
	}
}
</style>
<div class="container">
	<div class="page-header">
		<h2>
			공지사항
		</h2>
	</div>
	<div style="width:100%">
		<form method="post" action="<c:url value='/animal/freeboard/write.aw'/>">
			<div class="form-group form-row">
				<div class="form-row" style="width:87.5%;"id="titlediv">
					<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요">
				</div>
			</div>
			<div class="form-group form-row">
				<div style="width:100%">
					<textarea rows="10" class="form-control" id="summernote" name="content"></textarea>
				</div>
			</div>
			<div class="form-group form-row">
				<div class="col-sm-offset-2">
					<a href="<c:url value='/notice.aw'/>">
						<button type="submit" class="article-action__button button button--red button--red--border">등록</button>
					</a>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- 내용 끝 -->