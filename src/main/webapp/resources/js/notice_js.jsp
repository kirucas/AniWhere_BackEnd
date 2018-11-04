<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(function () {
        $(document).on('click', '#noticeBody .noticeContent', function () {
            $.ajax({
                url: '<c:url value="/notice_one.awa" />',
                type: 'post',
                data: { no: $(this).attr('title') },
                dataType: 'json',
                success: function (data) {
                    insertDataOnModal(data);
                },
                error: function (request, status, error) {
                    console.log("code : %s\r\nmessage : %s\r\nerror : %s\r\nstatus : %s", request.status, request.responseText, error, status);
                }
            });
        });

        $('#summernote').summernote({
            toolbar: [
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontsize', ['fontsize']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph', 'style']],
                ['insert', ['table']],
                ['height', ['height']]
            ],
            height: 630
        });

        $(document).on('click', "#noticeOne #noticeEdit", function () {
            if (confirm('수정할거냐?')) {
                location.href = "<c:url value='/notice/update.aw' />?no=" + $(this).attr('title');
            }
        });

        $(document).on('click', "#noticeOne #noticeDelete", function () {
            if (confirm("삭제할거냐?")) {
                location.href = "<c:url value='/notice/delete.aw' />?no=" + $(this).attr('title');
            }
        });

    });

    var insertDataOnModal = function (data) {
        var headerString = '';
        var bodyString = data.content;
        var footerString = '';

        headerString += '<h4>' + data.title + '</h4><hr>';
        headerString += '<hr /><div style="text-align: right;" class="clearfix">'
                    + data.am_id + '<br />'
                    + data.regidate + '<br />'
                    + '조회수 : ' + data.count
                    + '</div>';

        if (data.am_id == '${am_id}') {
            footerString += '<button class="btn btn-warning btn-fw" type="button" id="noticeEdit" title="' + data.no + '">수정</button>';
            footerString += '<button class="btn btn-danger btn-fw" type="button" id="noticeDelete" title="' + data.no + '">삭제</button>';
        }

        $("#noticeOne .modal-header").html(headerString);
        $("#noticeOne .modal-body").html(bodyString);
        $("#noticeOne .modal-footer").html(footerString);
    };
</script>