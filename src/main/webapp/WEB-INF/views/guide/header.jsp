<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script>
$(document).ready(function(e){
	$('.menu2_slide_menu').mouseenter(function(e){
		$('.slide_menu').stop().slideDown(200);
	})
	$('.menu2_slide_menu').mouseleave(function(e){
        $('.slide_menu').stop().slideUp(200);
    })
})

</script>

<div class="wrap_header">
    <div class="">
        <div class="wrap_menu">
            <div class="">
                <div class="logo">
                    <a href='/'> <img src="/resources/img/logo01.png" alt="로고" /></a>
                </div>
                <div class="menu">
                    <div class="login">
                        <a href='/user/user_login'><a1>로그인</a1></a>
                    </div>
                    <div class="signup">
                        <a href='/user/user_join'><a1>회원가입</a1></a>
                    </div>
                    <div class="confirm_reserve">
                        <a href='/user/user_join'><a1>나의 예약확인</a1></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

