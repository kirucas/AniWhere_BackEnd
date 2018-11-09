<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(function () {

        $(document).on('click', '#buyDelete', function () {
            var board_no = $(this).attr('title');
            if (confirm("삭제할거냐?")) {
                $.ajax({
                    url: '<c:url value="/market/buy_delete.awa" />',
                    type: 'post',
                    data: { no: board_no },
                    dataType: 'json',
                    success: function (data) {
                        if (data.result == 'success') {
                            alert('삭제에 성공했습니다');
                            location.href = "<c:url value='/market/buy.aw' />";
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

        $(document).on('click', '#sellDelete', function () {
            var board_no = $(this).attr('title');
            if (confirm("삭제할거냐?")) {
                $.ajax({
                    url: '<c:url value="/market/sell_delete.awa" />',
                    type: 'post',
                    data: { no: board_no },
                    dataType: 'json',
                    success: function (data) {
                        if (data.result == 'success') {
                            alert('삭제에 성공했습니다');
                            location.href = "<c:url value='/market/sell.aw' />";
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

        $(document).on('click', '#groupDelete', function () {
            var board_no = $(this).attr('title');
            if (confirm("삭제할거냐?")) {
                $.ajax({
                    url: '<c:url value="/market/group_delete.awa" />',
                    type: 'post',
                    data: { no: board_no },
                    dataType: 'json',
                    success: function (data) {
                        if (data.result == 'success') {
                            alert('삭제에 성공했습니다');
                            location.href = "<c:url value='/market/groupbuy.aw' />";
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
</script>