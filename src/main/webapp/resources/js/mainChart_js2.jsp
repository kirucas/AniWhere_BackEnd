<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

    $(function(){
        var label = [];
        var value = [];
        <c:forEach items="${allVisitCount}" var="item">
        	label.push('${item.MONTH}월');
        value.push(parseInt('${item.SUM}'));
        </c:forEach>

        var data = {
            labels : label,
            datasets: [{
                label : '접속자 ',
                data : value,
                backgroundColor : [
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)',
                	'rgba(54, 162, 235, 0.2)'
                	],
                borderColor : [
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)',
                	'rgba(54, 162, 235, 1)'
                	],
                borderWidth : 1
            }]
        };

        var options = {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    },
                    gridLines: {
                        display: false
                    }
                }],
                xAxes: [{
                    ticks: {
                        beginAtZero: true
                    },
                    gridLines: {
                        display: false
                    }
                }]
            },
            legend: {
                display: false
            },
            elements: {
                point: {
                    radius: 0
                }
            }
        };
       
        var barChartCanvas = $("#visitor_count_chart").get(0).getContext("2d");
        var barChart = new Chart(barChartCanvas, {
        	type : 'bar',
        	data : data,
        	options : options
        });

    });

</script>