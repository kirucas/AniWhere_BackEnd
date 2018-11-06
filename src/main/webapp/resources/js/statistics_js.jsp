<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    /*
    jan
    feb
    mar
    apr
    may
    jun
    jul
    aug
    sep
    oct
    nov
    dec
    */
    $(function(){
    	categoryAnimalCount();
    });

	var categoryAnimalCount = function(){
		$.ajax({
			url : '<c:url value="/statistics/categoryAnimalCount.awa" />',
			type : 'post',
			dataType : 'json',
			success : function(result){
				var dataSet = [];
				$.each(result.list, function(colName, value){
					dataSet.push(value.COUNT);
				});
				
				console.log(dataSet);
				
				var data = {
						labels : ["강아지", "고양이", "파충류&양서류", "조류", "기타 포유류"],
						datasets : [{
							data : dataSet,
							backgroundColor: [
						        'rgba(255, 99, 132, 0.2)',
						        'rgba(54, 162, 235, 0.2)',
						        'rgba(255, 206, 86, 0.2)',
						        'rgba(75, 192, 192, 0.2)',
						        'rgba(153, 102, 255, 0.2)',
						      ],
						      borderColor: [
						        'rgba(255,99,132,1)',
						        'rgba(54, 162, 235, 1)',
						        'rgba(255, 206, 86, 1)',
						        'rgba(75, 192, 192, 1)',
						        'rgba(153, 102, 255, 1)',
						      ],
						      borderWidth: 1
						}]
				}
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	};

</script>