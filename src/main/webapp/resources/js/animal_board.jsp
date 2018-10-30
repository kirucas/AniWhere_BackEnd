<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
$(function(){
	$("#phototab").click(function(){
		console.log("photo click : " + $(this).attr('title'));
		var board_name = $(this).attr('title');
		console.log('<c:url value="/' + board_name + '/photo_list.awa" />');
		$.ajax({
			url : '<c:url value="/' + board_name + '/photo_list.awa" />',
			type : 'post',
			data : {nowPage:1},
			dataType : 'json',
			success : function(data){
				console.log("넘어온 데이터 확인");
				console.log(data);
				clearAllList();
				appendPhoto(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$("#movietab").click(function(){
		var board_name = $(this).attr('title');
		$.ajax({
			url : '<c:url value="/' + board_name + '/movie_list.awa" />',
			type : 'post',
			dataType : 'json',
			success : function(data){
				console.log('movie click success');
				clearAllList();
				appendMovie(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$("#tiptab").click(function(){
		var board_name = $(this).attr('title');
		$.ajax({
			url : '<c:url value="/' + board_name + '/tip_list.awa" />',
			type :'post',
			dataType : 'json',
			success : function(data){
				console.log('tip click success');
				clearAllList();
				appendTip(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$("#qnatab").click(function(){
		var board_name = $(this).attr('title');
		$.ajax({
			url : '<c:url value="/' + board_name + '/quest_list.awa" />',
			type : 'post',
			dataType : 'json',
			success : function(data){
				console.log('quest click success');
				clearAllList();
				appendQuest(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	})
});

var clearAllList = function(){
	$("#photo tbody").html('');
	$("#movie tbody").html('');
	$("#tip tbody").html('');
	$("#QnA").html('');
};

var appendPhoto = function(data){
	
	console.log(data.records);
	console.log(data.pagingString);
	
	var tableString = '';
	
	if(data.records.length == 0){
		tableString += '<tr><td colspan="6" style="text-align:center">등록 된 글이 없습니다</td></tr>';
	}
	else {
		$.each(data.records, function(colName, value){
			tableString += '<tr>';
			
			tableString += '<td>' + value.no + '</td>';
			tableString += '<td>' + value.photo_title + '</td>';
			tableString += '<td>' + value.mem_nickname + '</td>';
			tableString += '<td>' + value.photo_regidate + '</td>';
			tableString += '<td>' + value.photo_count + '</td>';
			tableString += '<td>' + value.photo_hit + '</td>';
			
			tableString += '</tr>';
			
			console.log("colName : " + colName);
		});
	}
	
	$("#photo tbody").html(tableString);
	$("#photo .pagingPhoto").html(data.pagingString);
	
};

var appendMovie = function(data){
	console.log("appendMovie check");
	
	var tableString = '';
	
	if(data.length == 0){
		tableString += '<tr><td colspan="6" style="text-align:center">등록 된 글이 없습니다</td></tr>';
	}
	else {
		$.each(data, function(colName, value){
			tableString += '<tr>';
			
			tableString += '<td>' + value.no + '</td>';
			tableString += '<td>' + value.movie_title + '</td>';
			tableString += '<td>' + value.mem_nickname + '</td>';
			tableString += '<td>' + value.movie_regidate + '</td>';
			tableString += '<td>' + value.movie_count + '</td>';
			tableString += '<td>' + value.movie_hit + '</td>';
			
			tableString += '</tr>';
		});
	}
	
	$("#movie tbody").html(tableString);
};

var appendTip = function(data){
	console.log("appendTip check");
	
	var tableString = '';
	
	if(data.length == 0){
		tableString += '<tr><td colspan="6" style="text-align:center">등록 된 글이 없습니다</td></tr>';
	}
	else {
		$.each(data, function(colNme, value){
			tableString += '<tr>';
			
			tableString += '<td>' + value.no + '</td>';
			tableString += '<td>' + value.tip_title + '</td>';
			tableString += '<td>' + value.mem_nickname + '</td>';
			tableString += '<td>' + value.tip_regidate + '</td>';
			tableString += '<td>' + value.tip_count + '</td>';
			tableString += '<td>' + value.tip_hit + '</td>';
			
			tableString += '</tr>';
		});
	}
	
	$("#tip tbody").html(tableString);
};

var appendQuest = function(data){
	console.log("appendQuest check");
	
	var tableString = '';
	
	if(data.length == 0){
		tableString += '<tr><td colspan="6" style="text-align:center">등록 된 글이 없습니다</td></tr>';
	}
	else {
		$.each(data, function(colName, value){
			tableString += '<tr>';
			
			tableString += '<td>' + value.no + '</td>';
			if(value.quest_checking == '0'){
				tableString += '<td><span class="badge badge-danger badge-pill">질문</span>';
			}
			else {
				tableString += '<td><span class="badge badge-success badge-pill">답글</span>';
			}
			tableString += value.quest_title + '</td>';
			tableString += '<td>' + value.mem_nickname + '</td>';
			tableString += '<td>' + value.quest_regidate + '</td>';
			tableString += '<td>' + value.quest_count + '</td>';
			tableString += '<td>' + value.quest_hit + '</td>';
			
			tableString += '</tr>';
		});
	}
	
	$("#qna tbody").html(tableString);
};
</script>