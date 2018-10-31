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
	});
</script>