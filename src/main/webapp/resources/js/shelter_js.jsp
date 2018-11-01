<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	$(function(){
		$(document).on('click', '#shelter_list #shelter_link', function(){
			var imageString = '<img src="' + $(this).attr('title') + '" style="width: 100%; height: 100%;"/>';
			console.log(imageString);
			$("#animal_image_shelter .modal-body").html(imageString);
		});
		
		$("#passDateOnNotice").click(function(){
			$.ajax({
				url : '<c:url value="/miss/passDateOnNotice.awa" />',
				type : 'post',
				dataType : 'json',
				success : function(data){
					alert(data.affected + "을 삭제했습니다");
					location.href="<c:url value='/miss/shelter.aw' />";
				},
				error : function(request, status, error){
					console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
					alert("삭제에 실패했습니다");
				}
			});
		});
	});
</script>