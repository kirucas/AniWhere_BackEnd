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
    $(document).ready(function () {
        allBoardRegiChart();
        aniCategoryCount();
        allReservationStatis();
    });

    var allBoardRegiChart = function () {
        $.ajax({
            url: '<c:url value="/statis/boardregi.awa" />',
            type: 'post',
            dataType: 'json',
            success: function (data) {
                /* google.charts.load('current', { 'packages': ['bar'] }); */
                google.charts.setOnLoadCallback(drawBoardRegi);

                function drawBoardRegi() {
                    var dataChart = [['', '개']];
                    dataChart.push(['1월', data.jan == null ? 0 : data.jan]);
                    dataChart.push(['2월', data.feb == null ? 0 : data.feb]);
                    dataChart.push(['3월', data.mar == null ? 0 : data.mar]);
                    dataChart.push(['4월', data.apr == null ? 0 : data.apr]);
                    dataChart.push(['5월', data.may == null ? 0 : data.may]);
                    dataChart.push(['6월', data.jun == null ? 0 : data.jun]);
                    dataChart.push(['7월', data.jul == null ? 0 : data.jul]);
                    dataChart.push(['8월', data.aug == null ? 0 : data.aug]);
                    dataChart.push(['9월', data.sep == null ? 0 : data.sep]);
                    dataChart.push(['10월', data.oct == null ? 0 : data.oct]);
                    dataChart.push(['11월', data.nov == null ? 0 : data.nov]);
                    dataChart.push(['12월', data.dec == null ? 0 : data.dec]);

                    var regis = google.visualization.arrayToDataTable(dataChart);

                    var options = {
                        title: '전체 게시글 통계',
                        legend: { position: 'none' },
                        colors: ['#76C1FA'],
                        chartArea: { width: 401 },
                        hAxis: { ticks: [-1, -0.75, -0.5, -0.25, 0, 0.25, 0.5, 0.75, 1] },
                        bar: { gap: 0 },
                        histogram: {
                            bucketSize: 0.02,
                            maxNumBuckets: 200,
                            minValue: -1,
                            maxValue: 1
                        }
                    };

                    var chart = new google.charts.Bar(document.getElementById('board_regi_chart'));
                    chart.draw(regis, options);

                    /* window.addEventListener('resize', function () { chart.draw(data, options) }, false); */
                };
            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var aniCategoryCount = function () {
        $.ajax({
            url: '<c:url value="/statis/anicategory.awa"/>',
            type: 'post',
            dataType: 'json',
            success: function (data) {
                google.charts.setOnLoadCallback(drawCategory);

                function drawCategory() {
                    var dataChart = [['Task', 'Hours per Day']]
                    dataChart.push(['강아지', data.dog == null ? 0 : data.dog]);
                    dataChart.push(['고양이', data.cat == null ? 0 : data.cat]);
                    dataChart.push(['파충류&양서류', data.rna == null ? 0 : data.rna]);
                    dataChart.push(['조류', data.bird == null ? 0 : data.bird]);
                    dataChart.push(['기타 포유류', data.etc == null ? 0 : data.etc]);

                    var categorys = google.visualization.arrayToDataTable(dataChart);

                    var options = {
                        title: '동물 카테고리별 게시물 통계',
                        pieHole: 0.4,
                        colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66', '#ff0000'],
                        chartArea: {
                            width: 500
                        }
                    };

                    var pieChart = new google.visualization.PieChart(document.getElementById('ani_category_chart'));
                    pieChart.draw(categorys, options);
                };
            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var allReservationStatis = function () {
        $.ajax({
            url: '<c:url value="/statis/reservation.awa" />',
            type: 'post',
            dataType: 'json',
            success: function (data) {
                google.charts.setOnLoadCallback(drawReservation);

                function drawReservation() {
                    var dataChart = [['월별 통계', '횟수']];
                    dataChart.push(['1월', data.jan == null ? 0 : data.jan]);
                    dataChart.push(['2월', data.feb == null ? 0 : data.feb]);
                    dataChart.push(['3월', data.mar == null ? 0 : data.mar]);
                    dataChart.push(['4월', data.apr == null ? 0 : data.apr]);
                    dataChart.push(['5월', data.may == null ? 0 : data.may]);
                    dataChart.push(['6월', data.jun == null ? 0 : data.jun]);
                    dataChart.push(['7월', data.jul == null ? 0 : data.jul]);
                    dataChart.push(['8월', data.aug == null ? 0 : data.aug]);
                    dataChart.push(['9월', data.sep == null ? 0 : data.sep]);
                    dataChart.push(['10월', data.oct == null ? 0 : data.oct]);
                    dataChart.push(['11월', data.nov == null ? 0 : data.nov]);
                    dataChart.push(['12월', data.dec == null ? 0 : data.dec]);

                    var reservations = google.visualization.arrayToDataTable(dataChart);
                    
                    var options = {
                        title: '전체 예약 통계',
                        legend: { position: 'none' },
                        colors: ['#00FF00'],
                        chartArea: { width: 401 },
                        hAxis: { ticks: [-1, -0.75, -0.5, -0.25, 0, 0.25, 0.5, 0.75, 1] },
                        bar: { gap: 0 },
                        histogram: {
                            bucketSize: 0.02,
                            maxNumBuckets: 200,
                            minValue: -1,
                            maxValue: 1
                        }
                    };
                    
                    var chart = new google.charts.Bar(document.getElementById('reservation_apply_chart'));
                    chart.draw(reservations, options);
                }
            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

</script>