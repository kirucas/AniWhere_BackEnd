<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

    google.charts.load('current', {'packages' : ['corechart']});

    google.charts.setOnLoadCallback(mainVisitorChats);

    function mainVisitorChats(){

        var arrayStr = [['', '명']];

        <c:forEach items="${allVisitCount}" var="item">
            arrayStr.push(['${item.MONTH}월', parseInt('${item.SUM}')]);
        </c:forEach>
        
        console.log(arrayStr);
        console.log(arrayStr[1][1]);

        var data = google.visualization.arrayToDataTable(arrayStr);

        var options = {
            title : '방문자 통계',
            legend : { position : 'none'},
            colors : ['#1ABC9C'],
            chartArea : {width: 400},
            hAxis : [-1, -0.75, -0.5, -0.25, 0, 0.25, 0.5, 0.75, 1],
            bar : {gap : 0},
            histogram : {
                bucketSize: 0.02,
                maxNumBuckets: 200,
                minValue: -1,
                maxValue: 1
            }
        };

        var chart = new google.charts.Bar(document.getElementById('visitor-count-chart'));
        chart.draw(data, options);

    };

</script>