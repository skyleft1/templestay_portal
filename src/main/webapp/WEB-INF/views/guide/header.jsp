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
                <div class="">
                    <div class="menu1">
                        <div class="">
                            <div class="login"><a href='/user/user_login'><a1>로그인</a1></a></div>
                            <div>ㆍ</div>
                            <div class="signup"><a href='/user/user_join'><a1>회원가입</a1></a></div>
                        </div>
                    </div>
                    <div class='menu2_slide_menu'>
                        <div class="menu2">
                            <div class="">
                                <div class="logo">
                                    <a href='/'> 
                                    <img src="/resources/img/logo01.png" alt="로고" />
                                    </a>
                                </div>
                                <div class="warp_menu2">
                                    <div class="sub_menu"><a2>메인메뉴1</a2></div>
                                    <div class="sub_menu"><a2>메인메뉴2</a2></div>
                                    <div class="sub_menu"><a2>메인메뉴3</a2></div>
                                    <div class="sub_menu"><a2>게시판</a2></div>
                                </div>
                            </div>
                        </div>
                        <div class="slide_menu">
                            <div class="">
                                <div class="">
                                    <ul>
                                        <li>11</li>
                                        <li>111</li>
                                        <li>1111</li>
                                    </ul>
                                    <ul>
                                        <li>22</li>
                                        <li>222</li>
                                        <li>2222</li>
                                    </ul>
                                    <ul>
                                        <li>33</li>
                                        <li>3333</li>
                                        <li>333333</li>
                                    </ul>
                                    <ul>
                                        <li><a href='/board/article_list/notice'>공지사항</a></li>
                                        <li><a href='/board/article_list/free'>자유게시판</a></li>
                                        <li><a href='/board/article_list/QNA'>QNA</a></li>
                                    </ul>                                                                                                            
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

