<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script>
$(document).ready(function(e){
	/* $('.menu_slide_menu').mouseenter(function(e){
		$('.slide_menu').stop().slideDown(200);
	})
	$('.menu_slide_menu').mouseleave(function(e){
        $('.slide_menu').stop().slideUp(200);
    }) */
})

</script>

<div class="wrap_header">
    <div class="">
        <div class="wrap_menu">
            <div class="">
                <div class="logo">
                    <a href='/index'> <img src="/resources/img/logo01.png" alt="로고" /></a>
                </div>
                <div class="menu">
                    <div class="login">
                        <a href='/user/user_login'><a1>로그인</a1></a>
                    </div>
                    <div class="signup">
                        <a href='/user/user_join'><a1>회원가입</a1></a>

                        <div class='slide_menu'>
                            <div class=''>
                                <div class=''>
                                    <ul class=''>
                                        <li class=''>11</li>
                                        <li class=''>111</li>
                                        <li class=''>1111</li>
                                    </ul>
                                    <ul class=''>
                                        <li class=''>22</li>
                                        <li class=''>222</li>
                                        <li class=''>2222</li>
                                    </ul>
                                    <ul class=''>
                                        <li class=''>33</li>
                                        <li class=''>333</li>
                                        <li class=''>3333</li>
                                    </ul>
                                    <ul class=''>
                                        <li class=''>44</li>
                                        <li class=''>444</li>
                                        <li class=''>4444</li>
                                    </ul>
                               </div>
                          </div>
                      </div>
                    <div class="confirm_reserve">
                        <a href='/user/user_join'><a1>나의 예약확인</a1></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
