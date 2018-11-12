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
    $(function () {
        categoryAnimalCount();
        categoryLostCount();
        categoryStoreCount();
        categoryMatingCount();
        matingDraftingRate();
        categoryDraftingCount();
    });

    var options = {
        scales: {
            yAxes: [{
                ticks: { beginAtZero: true },
                gridLines: { display: false }
            }],
            xAxes: [{
                ticks: { beginAtZero: true },
                gridLines: { display: false }
            }]
        },
        legend: { display: false },
        elementes: {
            point: { radius: 0 }
        }
    };

    var categoryAnimalCount = function () {
        $.ajax({
            url: '<c:url value="/statistics/categoryAnimalCount.awa" />',
            type: 'post',
            dataType: 'json',
            success: function (result) {
                var dataSet = [];
                var labelSet = [];
                $.each(result.list, function (colName, value) {
                    dataSet.push(value.COUNT);
                    labelSet.push(value.CATEGORY);
                });

                var data = {
                    labels: labelSet,
                    datasets: [{
                        data: dataSet,
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
                };

                if ($("#categoryAnimal").length) {
                    var categoryAnimalCanvas = $("#categoryAnimal").get(0).getContext('2d');
                    var categoryChart = new Chart(categoryAnimalCanvas, {
                        type: 'bar',
                        data: data,
                        options: options
                    });
                }
            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var categoryLostCount = function () {
        $.ajax({
            url: '<c:url value="/statistics/categoryLostCount.awa" />',
            type: 'post',
            dataType: 'json',
            success: function (result) {
                var labelSet = [];
                var dataSet = [];

                $.each(result.list, function (colName, value) {
                    labelSet.push(value.KIND);
                    dataSet.push(value.COUNT);
                });

                var data = {
                    labels: labelSet,
                    datasets: [{
                        data: dataSet,
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
                };

                if ($("#categoryLost").length) {
                    var categoryLostCanvas = $("#categoryLost").get(0).getContext("2d");
                    var categoryChart = new Chart(categoryLostCanvas, {
                        type: 'bar',
                        data: data,
                        options: options
                    });
                }

            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var categoryStoreCount = function () {
        $.ajax({
            url: '<c:url value="/statistics/categoryStoreCount.awa" />',
            type: 'post',
            dataType: 'json',
            success: function (result) {
                var labelSet = [];
                var dataSet = [];

                $.each(result.list, function (colName, value) {
                    labelSet.push(value.CATEGORY);
                    dataSet.push(value.COUNT);
                });

                var data = {
                    labels: labelSet,
                    datasets: [{
                        data: dataSet,
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
                };

                if ($("#categoryStore").length) {
                    var categoryStoreCanvas = $("#categoryStore").get(0).getContext("2d");
                    var categoryStoreChart = new Chart(categoryStoreCanvas, {
                        type: 'bar',
                        data: data,
                        options: options
                    });
                }

            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var categoryMatingCount = function () {
        $.ajax({
            url: '<c:url value="/statistics/categoryMatingCount.awa" />',
            type: 'post',
            dataType: 'json',
            success: function (result) {

                var dataSet = [];
                var labelSet = [];

                $.each(result.list, function (colName, value) {
                    dataSet.push(value.COUNT);
                    labelSet.push(value.CATEGORY);
                });

                var data = {
                    labels: labelSet,
                    datasets: [{
                        data: dataSet,
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
                };

                if ($("#categoryMating").length) {
                    var categoryMatingCanvas = $("#categoryMating").get(0).getContext("2d");
                    var categoryMatingChart = new Chart(categoryMatingCanvas, {
                        type: 'bar',
                        data: data,
                        options: options
                    });
                }

            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var categoryDraftingCount = function () {
        $.ajax({
            url: '<c:url value="/statistics/categoryDraftingCount.awa" />',
            type: 'post',
            dataType: 'json',
            success: function (result) {
                var labelSet = [];
                var ongoingSet = [];
                var successSet = [];
                var failSet = [];

                $.each(result.list, function (colName, value) {
                    labelSet.push(value.CATEGORY);
                    ongoingSet.push(value.ONGOING);
                    successSet.push(value.SUCCESS);
                    failSet.push(value.FAIL);
                });

                var data = {
                    labels: labelSet,
                    datasets: [{
                        label: 'ongoing',
                        backgroundColor: 'rgba(255, 99, 132, 0.2)',
                        data: ongoingSet,
                        borderColor: 'rgba(255,99,132,1)',
                        borderWidth: 1
                    }, {
                        label: 'success',
                        backgroundColor: 'rgba(54, 162, 235, 0.2)',
                        data: successSet,
                        borderColor: 'rgba(54, 162, 235, 1)',
                        borderWidth: 1
                    }, {
                        label: 'fail',
                        backgroundColor: 'rgba(255, 206, 86, 0.2)',
                        data: failSet,
                        borderColor: 'rgba(255, 206, 86, 1)',
                        borderWidth: 1
                    }],
                };

                if ($("#categoryDrafting").length) {
                    var categoryDraftingCanvas = $("#categoryDrafting").get(0).getContext("2d");
                    var categoryDraftingChart = new Chart(categoryDraftingCanvas, {
                        type: 'bar',
                        data: data,
                        options: {
                            responsive: true,
                            scales: {
                                yAxes: [{
                                    ticks: { beginAtZero: true }
                                }]
                            }
                        }
                    });
                }

            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var matingDraftingRate = function () {
        $.ajax({
            url: '<c:url value="/statistics/matingDraftingRate.awa" />',
            type: 'post',
            dataType: 'json',
            success: function (result) {
                var dataSet = [['Task', 'Hour per Day']];

                $.each(result.list, function (colName, value) {
                    dataSet.push([value.STATUS, parseInt(value.COUNT)]);
                });

                var data = google.visualization.arrayToDataTable(dataSet);
                var gcOptions = {
                    pieHole: 0.4,
                    color: ['#ff6384', '#36a2eb', '#ffce56', '#4bc0c0', '#9966ff'],
                    chartArea: { width: 500 }
                };

                var matingDraftingChart = new google.visualization.PieChart(document.getElementById('matingDrafting'));

                matingDraftingChart.draw(data, gcOptions);

            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

</script>