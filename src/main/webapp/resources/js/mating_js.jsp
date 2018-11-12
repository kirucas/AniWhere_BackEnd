<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(function () {
        $(document).on('click', '.matingBody .mating-toggle', function () {
            $.ajax({
                url: '<c:url value="/mating/selectOne.awa" />',
                type: 'post',
                data: { mating_no: $(this).attr('title') },
                dataType: 'json',
                success: function (data) {

                    console.log(data);

                    var bodyString = '';

                    bodyString += '<img src="' + data.ani_pic + '" style="width: 100%; height: auto;" /><br/>';
                    bodyString += '<p>이름 : ' + data.ani_name + '</p><br/>';
                    bodyString += '<p>나이 : ' + data.ani_age + '</p><br/>';
                    bodyString += '<p>성별 : ' + data.ani_gender + '</p><br/>';
                    bodyString += '<p>대분류 : ' + data.animal_name + '</p><br/>';
                    bodyString += '<p>중분류 : ' + data.ani_kind + '</p><br/>';

                    $("#matingInfo .modal-body").html(bodyString);

                },
                error: function (request, status, error) {
                    console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                }
            });
        });
    });
</script>