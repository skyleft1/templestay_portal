<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/login.css">
<link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.css">

<link rel='stylesheet' href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'>


<script src='/resources/js/jquery-3.1.0.js'></script>
<script src='/resources/js/jquery-ui.js'></script>
<script src="/resources/js/common.js"></script>

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>




</head>
<body>

    <!-- header -->
    <div class="wrap">
        <div class="header">
            <%@ include file="../guide/header.jsp"%>
        </div>
        
        <!-- login -->
        <div class=''>
            <div class='login_content'>
                <div class=''>
                    <a2>로그인</a2>
                    <div class=''>
                        <form method='post' action=loginAction.jsp>
                            <div>
                                아이디 <input type='text' name='userID'
                                    value=''>
                            </div>
                            <div>
                                비밀번호 <input type='password'
                                    name='userPassword' value=''>
                            </div>
                            <div>
                                <input type='submit' name='' value='로그인'>
                            </div>
                            <div>
                                아직 회원이 아닌가요? <a href='signup.jsp'>회원가입</a>
                            </div>
                            <div>
                                비밀번호를 잊어버렸나요? <a href='#'>비밀번호 찾기</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->
        <div class="footer">
            <%@ include file="../guide/footer.jsp"%>
        </div>
    </div>

</body>
</html>
