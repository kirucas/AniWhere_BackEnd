<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <script>
    	
    window.onload = function(){
    	
    	document.getElementById('form_submit').onclick=function(){
    		
    		document.getElementById('form_login').submit();
    	};
    	
    };
    
    </script>
<form action="<c:url value='/admin/signInProcess1.aw' />" method="post" id="form_login">
                                <div class="form-group">
                                    <label class="label">아이디</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Username" name="am_id">
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="mdi mdi-check-circle-outline"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="label">비밀번호</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" placeholder="*********" name="am_pw">
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="mdi mdi-check-circle-outline"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <span id="form_submit" class="btn btn-primary btn-block"  >로그인</span>
                                </div>
                                <div class="form-group d-flex justify-content-between">
                                    <div class="form-check form-check-flat mt-0">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" checked>아이디 저장
                                        </label>
                                    </div>
                                    <a href="#" class="text-small forgot-password text-black">비밀번호를 잊어버렸어요</a>
                                </div>
                                <div class="text-block text-center my-3">
                                    <span class="text-small font-weight-semibold">아직 회원이 아니세요?</span>
                                    <a href="register.html" class="text-black text-small">가입하러 가기</a>
                                </div>
                            </form>