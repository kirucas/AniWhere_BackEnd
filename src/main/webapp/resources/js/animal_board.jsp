<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
    $(function () {
        $("#phototab").click(function () {
            var board_name = $(this).attr('title');
            callPhotoList(board_name);
        });

        $(document).on("click", "#pagingPhoto .page-link", function () {
            var board_name = $("#pagingPhoto").attr('title');
            $.ajax({
                url: '<c:url value="/' + board_name + '/photo_list.awa" />',
                type: 'post',
                data: { nowPage: $(this).attr('title') },
                dataType: 'json',
                success: function (data) {
                    clearAnimalList();
                    changePhoto(data);
                },
                error: function (request, status, error) {
                    console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                }
            });
        });

        $("#movietab").click(function () {
            var board_name = $(this).attr('title');
            callMovieList(board_name);
        });

        $(document).on("click", "#pagingMovie .page-link", function () {
            var board_name = $("#pagingMovie").attr('title');
            $.ajax({
                url: '<c:url value="/' + board_name + '/movie_list.awa" />',
                type: 'post',
                data: { nowPage: $(this).attr("title") },
                dataType: 'json',
                success: function (data) {
                    clearAnimalList();
                    changeMovie(data);
                },
                error: function (request, status, error) {
                    console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                }
            });
        });

        $("#tiptab").click(function () {
            var board_name = $(this).attr('title');
            callTipList(board_name);
        });

        $(document).on('click', '#pagingTip .page-link', function () {
            var board_name = $("#pagingTip").attr('title');
            $.ajax({
                url: '<c:url value="/' + board_name + '/tip_list.awa" />',
                type: 'post',
                data: { nowPage: $(this).attr('title') },
                dataType: 'json',
                success: function (data) {
                    clearAnimalList();
                    changeTip(data);
                },
                error: function (request, status, error) {
                    console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                }
            });
        });

        $("#qnatab").click(function () {
            var board_name = $(this).attr('title');
            callQnaList(board_name);
        })

        $(document).on('click', '#pagingQna .page-link', function () {
            var board_name = $("#pagingQna").attr('title');
            $.ajax({
                url: '<c:url value="/' + board_name + '/quest_list.awa" />',
                type: 'post',
                data: { nowPage: $(this).attr('title') },
                dataType: 'json',
                success: function (data) {
                    clearAnimalList();
                    changeQuest(data);
                },
                error: function (request, status, error) {
                    console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                }
            });
        });

        $(document).on('click', '.photoDelete', function () {
            var board_name = $(this).attr('id');
            var board_no = $(this).attr('title');
            if (confirm("삭제할거냐?")) {
                $.ajax({
                    url: '<c:url value="/' + board_name + '/photo_delete.awa" />',
                    type: 'post',
                    data: { no: board_no },
                    dataType: 'json',
                    success: function (data) {
                        if (data.result == 'success') {
                            alert('삭제에 성공했습니다');
                            callPhotoList(board_name);
                        }
                        else {
                            alert("삭제에 실패했습니다");
                        }
                    },
                    error: function (request, status, error) {
                        console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                    }
                });
            }
        });

        $(document).on('click', '.movieDelete', function () {
            var board_name = $(this).attr('id');
            var board_no = $(this).attr('title');
            if (confirm("삭제할거냐?")) {
                $.ajax({
                    url: '<c:url value="/' + board_name + '/movie_delete.awa" />',
                    type: 'post',
                    data: { no: board_no },
                    dataType: 'json',
                    success: function (data) {
                        if (data.result == 'success') {
                            alert('삭제에 성공했습니다');
                            callMovieList(board_name);
                        }
                        else {
                            alert("삭제에 실패했습니다");
                        }
                    },
                    error: function (request, status, error) {
                        console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                    }
                });
            }
        });

        $(document).on('click', '.tipDelete', function () {
            var board_name = $(this).attr('id');
            var board_no = $(this).attr('title');
            if (confirm("삭제할거냐?")) {
                $.ajax({
                    url: '<c:url value="/' + board_name + '/tip_delete.awa" />',
                    type: 'post',
                    data: { no: board_no },
                    dataType: 'json',
                    success: function (data) {
                        if (data.result == 'success') {
                            alert('삭제에 성공했습니다');
                            callTipList(board_name);
                        }
                        else {
                            alert("삭제에 실패했습니다");
                        }
                    },
                    error: function (request, status, error) {
                        console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                    }
                });
            }
        });

        $(document).on('click', '.qnaDelete', function () {
            var board_name = $(this).attr('id');
            var board_no = $(this).attr('title');
            if (confirm("삭제할거냐?")) {
                $.ajax({
                    url: '<c:url value="/' + board_name + '/quest_delete.awa" />',
                    type: 'post',
                    data: { no: board_no },
                    dataType: 'json',
                    success: function (data) {
                        if (data.result == 'success') {
                            alert('삭제에 성공했습니다');
                            callQnaList(board_name);
                        }
                        else {
                            alert("삭제에 실패했습니다");
                        }
                    },
                    error: function (request, status, error) {
                        console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                    }
                });
            }
        });

        $(document).on('click', '#freeDelete', function () {
            var board_no = $(this).attr('title');
            if (confirm("삭제할거냐?")) {
                $.ajax({
                    url: '<c:url value="/freeboard/delete.awa" />',
                    type: 'post',
                    data: { no: board_no },
                    dataType: 'json',
                    success: function (data) {
                        if (data.result == 'success') {
                            alert('삭제에 성공했습니다');
                            location.href = "<c:url value='/freeboard.aw' />";
                        }
                        else {
                            alert("삭제에 실패했습니다");
                        }
                    },
                    error: function (request, status, error) {
                        console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                    }
                });
            }
        });
    });

    var callPhotoList = function (board_name) {
        $.ajax({
            url: '<c:url value="/' + board_name + '/photo_list.awa" />',
            type: 'post',
            data: { nowPage: 1 },
            dataType: 'json',
            success: function (data) {
                clearAnimalList();
                changePhoto(data);
            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var callMovieList = function (board_name) {
        $.ajax({
            url: '<c:url value="/' + board_name + '/movie_list.awa" />',
            type: 'post',
            data: { nowPage: 1 },
            dataType: 'json',
            success: function (data) {
                clearAnimalList();
                changeMovie(data);
            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var callTipList = function (board_name) {
        $.ajax({
            url: '<c:url value="/' + board_name + '/tip_list.awa" />',
            type: 'post',
            data: { nowPage: 1 },
            dataType: 'json',
            success: function (data) {
                clearAnimalList();
                changeTip(data);
            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var callQnaList = function (board_name) {
        $.ajax({
            url: '<c:url value="/' + board_name + '/quest_list.awa" />',
            type: 'post',
            data: { nowPage: 1 },
            dataType: 'json',
            success: function (data) {
                clearAnimalList();
                changeQuest(data);
            },
            error: function (request, status, error) {
                console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
            }
        });
    };

    var clearAnimalList = function () {
        $("#photo tbody").html('');
        $("#photo #pagingPhoto").html('');
        $("#movie tbody").html('');
        $("#movie #pagingMovie").html('');
        $("#tip tbody").html('');
        $("#tip #pagingTip").html('');
        $("#qna tbody").html('');
        $("#qna #pagingQna").html('');
    };

    var changePhoto = function (data) {

        var tableString = '';

        if (data.records.length == 0) {
            tableString += '<tr><td colspan="6" style="text-align:center;">등록 된 글이 없습니다</td></tr>';
        }
        else {
            $.each(data.records, function (colName, value) {
                tableString += '<tr>';

                tableString += '<td>' + value.no + '</td>';
                tableString += '<td>' + value.photo_title + '</td>';
                tableString += '<td>' + (value.mem_nickname == null ? '탈퇴한 회원 ㅠ' : value.mem_nickname) + '</td>';
                tableString += '<td>' + value.photo_regidate + '</td>';
                tableString += '<td>' + value.photo_count + '</td>';
                tableString += '<td>' + value.photo_hit + '</td>';
                tableString += '<td><button id="' + $("#phototab").attr('title') + '" class="photoDelete btn btn-danger" title="' + value.no + '">삭제하기</button></td>';

                tableString += '</tr>';

            });
        }

        $("#photo tbody").html(tableString);
        $("#pagingPhoto").html(data.pagingString);

    };

    var changeMovie = function (data) {

        var tableString = '';

        if (data.records.length == 0) {
            tableString += '<tr><td colspan="6" style="text-align:center;">등록 된 글이 없습니다</td></tr>';
        }
        else {
            $.each(data.records, function (colName, value) {
                tableString += '<tr>';

                tableString += '<td>' + value.no + '</td>';
                tableString += '<td>' + value.movie_title + '</td>';
                tableString += '<td>' + (value.mem_nickname == null ? '탈퇴한 회원 ㅠ' : value.mem_nickname) + '</td>';
                tableString += '<td>' + value.movie_regidate + '</td>';
                tableString += '<td>' + value.movie_count + '</td>';
                tableString += '<td>' + value.movie_hit + '</td>';
                tableString += '<td><button id="' + $("#movietab").attr('title') + '" class="movieDelete btn btn-danger" title="' + value.no + '">삭제하기</button></td>';

                tableString += '</tr>';
            });
        }

        console.log(tableString);
        console.log(data.pagingString);

        $("#movie tbody").html(tableString);
        $("#pagingMovie").html(data.pagingString);

    };

    var changeTip = function (data) {

        var tableString = '';

        if (data.records.length == 0) {
            tableString += '<tr><td colspan="6" style="text-align:center;">등록 된 글이 없습니다</td></tr>';
        }
        else {
            $.each(data.records, function (colNme, value) {
                tableString += '<tr>';

                tableString += '<td>' + value.no + '</td>';
                tableString += '<td>' + value.tip_title + '</td>';
                tableString += '<td>' + (value.mem_nickname == null ? '탈퇴한 회원 ㅠ' : value.mem_nickname) + '</td>';
                tableString += '<td>' + value.tip_regidate + '</td>';
                tableString += '<td>' + value.tip_count + '</td>';
                tableString += '<td>' + value.tip_hit + '</td>';
                tableString += '<td><button id="' + $("#tiptab").attr('title') + '" class="tipDelete btn btn-danger" title="' + value.no + '">삭제하기</button></td>';

                tableString += '</tr>';
            });
        }

        $("#tip tbody").html(tableString);
        $("#pagingTip").html(data.pagingString);

    };

    var changeQuest = function (data) {

        var tableString = '';

        if (data.records.length == 0) {
            tableString += '<tr><td colspan="6" style="text-align:center;">등록 된 글이 없습니다</td></tr>';
        }
        else {
            $.each(data.records, function (colName, value) {
                tableString += '<tr>';

                tableString += '<td>' + value.no + '</td>';
                if (value.quest_checking == '0') {
                    tableString += '<td><span class="badge badge-danger badge-pill">질문</span>';
                }
                else {
                    tableString += '<td><span class="badge badge-success badge-pill">답글</span>';
                }
                tableString += value.quest_title + '</td>';
                tableString += '<td>' + (value.mem_nickname == null ? '탈퇴한 회원 ㅠ' : value.mem_nickname) + '</td>';
                tableString += '<td>' + value.quest_regidate + '</td>';
                tableString += '<td>' + value.quest_count + '</td>';
                tableString += '<td>' + value.quest_hit + '</td>';
                tableString += '<td><button id="' + $("#qnatab").attr('title') + '" class="questDelete btn btn-danger" title="">삭제하기</button></td>';

                tableString += '</tr>';
            });
        }

        $("#qna tbody").html(tableString);
        $("#pagingQna").html(data.pagingString);

    };
</script>