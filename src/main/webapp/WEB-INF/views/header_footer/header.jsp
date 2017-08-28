<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script>
$(document).ready(function(e){
    $('.go_login').click(function(e){
        window.location.href = "${pageContext.request.contextPath}/user/user_login" ;
        });
    $('.go_join').click(function(e){
        window.location.href = "${pageContext.request.contextPath}/user/user_join" ;
        });
            
    
    $('.go_logout').click(function(e){
        $('.popup_cancel_wrap').show();
        $('.popup_content').text('로그아웃 되었습니다.');
        $('.popup_button_cancel').click(function(e){
            $('.popup_cancel_wrap').hide();
            window.location.href = "${pageContext.request.contextPath}/user/user_logout" ;
        });

    });

    $('.go_user_info').click(function(e){
        window.location.href = "${pageContext.request.contextPath}/user/user_info" ;
    });
    $('.go_user_reservation').click(function(e){
        window.location.href = "${pageContext.request.contextPath}/user/user_confirm_reservation_list" ;
    });
})

</script>

<div class="wrap_header">
    <div class="">
        <div class="wrap_menu">
            <div class="">
                <div class="logo">
                    <a href='${pageContext.request.contextPath}'> <img src="${pageContext.request.contextPath}/resources/img/logo01.png" alt="로고" /></a>
                </div>
                <div class="menu">
                
                <c:choose>
                    <c:when test="${empty session_user}"> <!--  WebConstants파일의 SESSION_NAME의 값을 불러옴 -->
                        <div class="login">
                            <input type="button" value="로그인" class="go_login" />
                        </div>
                        <div class="signup">
                            <input type="button" value="회원가입" class="go_join" />
                        </div>

                    </c:when>
                    <c:otherwise>
                        <div class='move_login box2'>
                            ${ session_user.userid} 님 환영합니다!                           
                        </div>
                        <div class='move_login box'>
                            <input type="button" value="로그아웃" class="go_logout" />
                        </div>
                        <div class='move_signup box'>
                            <input type="button" value="정보수정" class="go_user_info" />
                        </div>
                        <div class="confirm_reserve">
                            <input type="button" value="나의 예약확인" class="go_user_reservation" />
                        </div>
                        
                    </c:otherwise>
                </c:choose>
                
                </div>
            </div>
        </div>
    </div>
    
    <!--  팝업창(숨겨짐)  -->
<div class='popup_cancel_wrap'>
    <div class="popup_cancel_cover"></div>
    <div class='popup_cancel'>
        <div class='popup_head'>알림</div>
        <div class='popup_content'></div>
        <div class='popup_bottom'>
            <button class='popup_button_cancel' data-dismiss='modal'>Cancel</button>
        </div>
    </div>
</div>

<div class='popup_confirm_wrap'>   
    <div class="popup_confirm_cover"></div>
    <div class='popup_confirm'>
        <div class='popup_head'>알림</div>
        <div class='popup_content'></div>
        <div class='popup_bottom'>
            <button class='popup_button_confirm' data-trigger='confirm'>확인</button>
            <button class='popup_button_cancel' data-dismiss='modal'>Cancel</button>
        </div>
    </div>
</div>
    
    
</div>

