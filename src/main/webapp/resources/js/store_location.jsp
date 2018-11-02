<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
$(function(){
	$("#allStore").click(function(){
		$.ajax({
			url : '<c:url value="/where/store/all_list.awa" />',
			type : 'post',
			data : {nowPage : 1},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changeAll(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$(document).on('click', '#pagingAll .page-link', function(){
		$.ajax({
			url : '<c:url value="/where/store/all_list.awa" />',
			type : 'post',
			data : {nowPage : $(this).attr('title')},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changeAll(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$("#caffeStore").click(function(){
		$.ajax({
			url : '<c:url value="/where/store/caffe_list.awa" />',
			type : 'post',
			data : {nowPage : 1},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changeCaffe(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$(document).on('click', '#pagingCaffe .page-link', function(){
		$.ajax({
			url : '<c:url value="/where/store/caffe_list.awa" />',
			type : 'post',
			data : {nowPage : $(this).attr('title')},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changeCaffe(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$("#beautyStore").click(function(){
		$.ajax({
			url : '<c:url value="/where/store/beauty_list.awa" />',
			type : 'post',
			data : {nowPage : 1},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changeBeauty(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$(document).on('click', '#pagingBeauty .page-link', function(){
		$.ajax({
			url : '<c:url value="/where/store/beauty_list.awa" />',
			type : 'post',
			data : {nowPage : $(this).attr('title')},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changeBeauty(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});

	$("#hospitalStore").click(function(){
		$.ajax({
			url : '<c:url value="/where/store/hospital_list.awa" />',
			type : 'post',
			data : {nowPage : 1},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changeHospital(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$(document).on('click', '#pagingHospital .page-link', function(){
		$.ajax({
			url : '<c:url value="/where/store/hospital_list.awa" />',
			type : 'post',
			data : {nowPage : $(this).attr('title')},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changeHospital(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});

	$("#pharmacyStore").click(function(){
		$.ajax({
			url : '<c:url value="/where/store/pharmacy_list.awa" />',
			type : 'post',
			data : {nowPage : 1},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changePharmacy(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$(document).on('click', '#pagingPharmacy .page-link', function(){
		$.ajax({
			url : '<c:url value="/where/store/pharmacy_list.awa" />',
			type : 'post',
			data : {nowPage : $(this).attr('title')},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changePharmacy(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});

	$("#etcStore").click(function(){
		$.ajax({
			url : '<c:url value="/where/store/etc_list.awa" />',
			type : 'post',
			data : {nowPage : 1},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changeEtc(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
	
	$(document).on('click', '#pagingEtc .page-link', function(){
		$.ajax({
			url : '<c:url value="/where/store/etc_list.awa" />',
			type : 'post',
			data : {nowPage : $(this).attr('title')},
			dataType : 'json',
			success : function(data){
				clearStoreList();
				changeEtc(data);
			},
			error : function(request, status, error){
				console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
			}
		});
	});
});

var clearStoreList = function(){
	$("#all tbody").html('');
	$("#caffe tbody").html('');
	$("#beauty tbody").html('');
	$("#hospital tbody").html('');
	$("#pharmacy tbody").html('');
	$("#etc tbody").html('');
};

var changeAll = function(data){
	
	var tableString = '';
	
	if(data.records.length == 0){
		tableString += '<tr><td colspan="4" style="text-align: center;">등록 된 상가 정보가 없습니다</td></tr>';
	}
	else {
		$.each(data.records, function(colName, value){
			tableString += '<tr>';
			
			tableString += '<td>' + value.bizesid + '</td>';
			tableString += '<td>' + value.bizesnm;
			if(value.brchnm != null){
				tableString += ' ' + value.brchnm;
			}
			tableString += '</td>';
			tableString += '<td>' + value.indssclsnm + '</td>';
			tableString += '<td>' + value.rdnmadr + ' ';
			if(value.dongno != null){
				tableString += value.dongno + '동 ';
			}
			if(value.flrno != null){
				tableString += value.flrno + '층 ';
			}
			if(value.hono != null){
				tableString += value.hono + '호 ';
			}
			tableString += '</td>';
		});
	}
	
	$("#all tbody").html(tableString);
	$("#pagingAll").html(data.pagingString);
	
};

var changeCaffe = function(data){
	
	var tableString = '';
	
	if(data.records.length == 0){
		tableString += '<tr><td colspan="4" style="text-align: center;">등록 된 상가 정보가 없습니다</td></tr>';
	}
	else {
		$.each(data.records, function(colName, value){
			tableString += '<tr>';
			
			tableString += '<td>' + value.bizesid + '</td>';
			tableString += '<td>' + value.bizesnm;
			if(value.brchnm != null){
				tableString += ' ' + value.brchnm;
			}
			tableString += '</td>';
			tableString += '<td>' + value.indssclsnm + '</td>';
			tableString += '<td>' + value.rdnmadr + ' ';
			if(value.dongno != null){
				tableString += value.dongno + '동 ';
			}
			if(value.flrno != null){
				tableString += value.flrno + '층 ';
			}
			if(value.hono != null){
				tableString += value.hono + '호 ';
			}
			tableString += '</td>';
		});
	}
	
	$("#caffe tbody").html(tableString);
	$("#pagingCaffe").html(data.pagingString);
	
};

var changeBeauty = function(data){
	
	var tableString = '';
	
	if(data.records.length == 0){
		tableString += '<tr><td colspan="4" style="text-align: center;">등록 된 상가 정보가 없습니다</td></tr>';
	}
	else {
		$.each(data.records, function(colName, value){
			tableString += '<tr>';
			
			tableString += '<td>' + value.bizesid + '</td>';
			tableString += '<td>' + value.bizesnm;
			if(value.brchnm != null){
				tableString += ' ' + value.brchnm;
			}
			tableString += '</td>';
			tableString += '<td>' + value.indssclsnm + '</td>';
			tableString += '<td>' + value.rdnmadr + ' ';
			if(value.dongno != null){
				tableString += value.dongno + '동 ';
			}
			if(value.flrno != null){
				tableString += value.flrno + '층 ';
			}
			if(value.hono != null){
				tableString += value.hono + '호 ';
			}
			tableString += '</td>';
		});
	}
	
	$("#beauty tbody").html(tableString);
	$("#pagingBeauty").html(data.pagingString);
	
};

var changeHospital = function(data){
	
	var tableString = '';
	
	if(data.records.length == 0){
		tableString += '<tr><td colspan="4" style="text-align: center;">등록 된 상가 정보가 없습니다</td></tr>';
	}
	else {
		$.each(data.records, function(colName, value){
			tableString += '<tr>';
			
			tableString += '<td>' + value.bizesid + '</td>';
			tableString += '<td>' + value.bizesnm;
			if(value.brchnm != null){
				tableString += ' ' + value.brchnm;
			}
			tableString += '</td>';
			tableString += '<td>' + value.indssclsnm + '</td>';
			tableString += '<td>' + value.rdnmadr + ' ';
			if(value.dongno != null){
				tableString += value.dongno + '동 ';
			}
			if(value.flrno != null){
				tableString += value.flrno + '층 ';
			}
			if(value.hono != null){
				tableString += value.hono + '호 ';
			}
			tableString += '</td>';
		});
	}
	
	$("#hospital tbody").html(tableString);
	$("#pagingHospital").html(data.pagingString);
	
};

var changePharmacy = function(data){
	
	var tableString = '';
	
	if(data.records.length == 0){
		tableString += '<tr><td colspan="4" style="text-align: center;">등록 된 상가 정보가 없습니다</td></tr>';
	}
	else {
		$.each(data.records, function(colName, value){
			tableString += '<tr>';
			
			tableString += '<td>' + value.bizesid + '</td>';
			tableString += '<td>' + value.bizesnm;
			if(value.brchnm != null){
				tableString += ' ' + value.brchnm;
			}
			tableString += '</td>';
			tableString += '<td>' + value.indssclsnm + '</td>';
			tableString += '<td>' + value.rdnmadr + ' ';
			if(value.dongno != null){
				tableString += value.dongno + '동 ';
			}
			if(value.flrno != null){
				tableString += value.flrno + '층 ';
			}
			if(value.hono != null){
				tableString += value.hono + '호 ';
			}
			tableString += '</td>';
		});
	}
	
	$("#pharmacy tbody").html(tableString);
	$("#pagingPharmacy").html(data.pagingString);
	
};

var changeEtc = function(data){
	
	var tableString = '';
	
	if(data.records.length == 0){
		tableString += '<tr><td colspan="4" style="text-align: center;">등록 된 상가 정보가 없습니다</td></tr>';
	}
	else {
		$.each(data.records, function(colName, value){
			tableString += '<tr>';
			
			tableString += '<td>' + value.bizesid + '</td>';
			tableString += '<td>' + value.bizesnm;
			if(value.brchnm != null){
				tableString += ' ' + value.brchnm;
			}
			tableString += '</td>';
			tableString += '<td>' + value.indssclsnm + '</td>';
			tableString += '<td>' + value.rdnmadr + ' ';
			if(value.dongno != null){
				tableString += value.dongno + '동 ';
			}
			if(value.flrno != null){
				tableString += value.flrno + '층 ';
			}
			if(value.hono != null){
				tableString += value.hono + '호 ';
			}
			tableString += '</td>';
		});
	}
	
	$("#etc tbody").html(tableString);
	$("#pagingEtc").html(data.pagingString);
	
};
</script>