<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
$(function(){
	$(document).on('click', '#noticeBody .noticeContent', function(){
		$.ajax({
			url : '<c:url value="/notice_one.awa" />',
			type : 'post',
			data : {no : $(this).attr('title')},
			dataType : 'json',
			success : function(data){
				insertDataOnModal(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$('#summernote').summernote({
		toolbar: [
		    ['style', ['bold', 'italic', 'underline', 'clear']],
		    ['font', ['strikethrough', 'superscript', 'subscript']],
		    ['fontsize', ['fontsize']],
		    ['color', ['color']],
		    ['para', ['ul', 'ol', 'paragraph', 'style']],
		    ['insert', ['table']],
		    ['height', ['height']]
		  ],
		height: 630
  	});
});

var insertDataOnModal = function(data){
	var headerString = '';
	var bodyString = data.content;
	
	headerString += '<h4>' + data.title + '</h4>';
	headerString += '<div style="text-align: right;">'
				+ data.am_id + '<br />'
				+ data.regidate + '<br />'
				+ '조회수 : ' + data.count
				+ '</div>';
				
	$("#noticeOne .modal-header").html(headerString);
	$("#noticeOne .modal-body").html(bodyString);
};
</script>