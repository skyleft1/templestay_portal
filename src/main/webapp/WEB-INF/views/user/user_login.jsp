<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user_login</title>

<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/login.css">

<script src='/resources/js/jquery-3.1.0.js'></script>
<script src='/resources/js/jquery-ui.js'></script>
<script src="/resources/js/common.js"></script>
<script src="/resources/js/ajaxsetup.js"></script>
<script src="/resources/js/MyApp.board.js"></script>


<script type="text/javascript">

$(document).ready( function(e){
		
    $('.login_submit').click(function(e){
        
        var userid = $('.userid').val();
        var userpassword = $('.userpassword').val();
        
        $.ajax({
            url : '/user/user_login'
            , data: {'userid' : userid , 'userpassword' : userpassword 
                , 'programno' : '${programno}' , 'reserve_date' : '${reserve_date}' } //reserve_date는 값이 없을수도 있기에 ''를 해줌  } 
            , type: 'POST'      
            , timeout: 30000    // 30초
            , dataType: 'json'  
            , beforeSend : function() {
            }
        }).done( function(data, textStatus, xhr ){
            if (data.code === 1){
                $('.popup_cancel_wrap').show();
                $('.popup_content').text( data.userid + " 님 환영합니다. ");
                $('.popup_button_cancel').click(function(e){
                    if (data.programno == null){
                        $('.popup_cancel_wrap').hide();
                        window.location.href = "/" ;                       
                    }
                    else{
                    /* 예약화면 전에 로그인을 깜박하고 안했을경우 로그인 화면으로 간 후
                    로그인 하면 예약화면 가게끔 (유저 편리성)
                    */
                        $('.popup_cancel_wrap').hide();
                        window.location.href= '/reservation/reservation_reservation?programno='+data.programno+'&reserve_date='+data.reserve_date;
                    }
                });
                
            }else {
                $('.popup_cancel_wrap').show();
                $('.popup_content').text( "아이디 또는 비밀번호가 틀렸습니다." );
                $('.popup_button_cancel').click(function(e){
                    $('.popup_cancel_wrap').hide();
                    window.location.href = "/user/user_login";
                });
            }
        });
    });
});
</script>

</head>

<body>

    <!-- header -->
    <div class='header'>
        <%@ include file="../header_footer/header.jsp" %>
    </div>

    <!-- login -->
    <div class='login_head'>
        <div class='login_content'>
        
            <div class=''>
                <h3>로그인</h3>
                <div class=''>
                    <form method='post' action='/user/user_login' >
                        <div>아이디
                            <input type='text' name='userid' value='' class='userid'/>
                        </div>
                        <div> 비밀번호 
                            <input type='password' name='userpassword' value='' class='userpassword'/>
                        </div>
                        <div>
                            <input type='button' name='' value='로그인' class='login_submit' />
                        </div>
                        <div>
                            아직 회원이 아닌가요? <a href='/user/user_join'>회원가입</a>
                        </div>
                        <div>
                            비밀번호를 잊어버렸나요? <a href='/user/user_find_password'>비밀번호 찾기/재설정</a>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- footer -->
    <div class='footer'>
        <%@ include file="../header_footer/footer.jsp" %>
    </div>

</body>
</html>