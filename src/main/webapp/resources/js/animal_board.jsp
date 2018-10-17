<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
$(function(){
	$("#photo").click(function(){
		console.log("photo click : " + $(this).attr('title'));
		var board_name = $(this).attr('title');
		console.log('<c:url value="/' + board_name + '/photo_list.aw" />');
		$.ajax({
			url : '<c:url value="/' + board_name + '/photo_list.aw" />',
			type : 'post',
			dataType : 'json',
			success : function(data){
				console.log("넘어온 데이터 확인");
				console.log(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
});
</script>