<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/index.css">

<script src='/resources/js/jquery-3.1.0.js'></script>
<script src='/resources/js/common.js'></script>


</head>


<body>

    <div class="wrap">
        <div class="header">
            <%@ include file="guide/header.jsp" %>
        </div>


        <div class="wrap_index">
            <div class="">
                <div class="main_img">
                    <div class="wrap_main_reserve">
						<form>
							<div>
                                <h5>예약일 선택</h5>
								<input type='text' name='' value=''>
							</div>
							<div>
                                <h5>테마 선택</h5>
								<input type='text' name='' value=''>
							</div>
							<div>
								<input type='submit' name='' value='예약'>
							</div>
						</form>
					</div>
                </div>
            </div>
            <div class="wrap_ad_ban">
                <div class="advertisement">
                    <div class="">광고1</div>
                    <div class="">광고2</div>
                    <div class="">광고3</div>
                </div>
                <div class="banner">
                    <div class="">배너1</div>
                    <div class="">배너2</div>
                    <div class="">배너3</div>
                    <div class="">배너4</div>
                </div>
            </div>
        </div>


        <div class="footer">
            <%@ include file="guide/footer.jsp" %>
        </div>
    </div>

</body>
</html>