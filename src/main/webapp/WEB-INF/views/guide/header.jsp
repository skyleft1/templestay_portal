<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script>
$(document).ready(function(){
    $('.menu2').mouseenter(function(e){
    	$('.slide_menu').slideDown(200);
    });
    $('.menu2').mouseleave(function(e){
        $('.slide_menu').slideUp(200);
    });
})

</script>

<div class="wrap_header">
    <div class="">
        <div class="wrap_menu">
            <div class="">
                <div class="">
                    <div class="menu1">
                        <div class="">
                            <div class="login"><a href='login'><a1>로그인</a1></a></div>
                            <div>ㆍ</div>
                            <div class="signup"><a href='join'><a1>회원가입</a1></a></div>
                        </div>
                    </div>
                    <div class="menu2">
                        <div class="menu2_1">
                            <div class="logo">
                                <a href='/'> 
                                <img src="/resources/img/logo01.png" alt="로고" />
                                </a>
                            </div>
                            <div class="warp_menu2">
                                <div class="sub_menu"><a2>메인메뉴1</a2></div>
                                <div class="sub_menu"><a2>메인메뉴2</a2></div>
                                <div class="sub_menu"><a2>메인메뉴3</a2></div>
                                <div class="sub_menu"><a href='bbs'><a2>게시판</a2></a></div>
                            </div>
                        </div>

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
                </div>
            </div>
        </div>
    </div>
    </div>
</div>

