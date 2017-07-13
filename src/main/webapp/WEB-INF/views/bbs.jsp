<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/bbs.css">
<link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.css">

<link rel='stylesheet' href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'>

<script src='/resources/js/jquery-3.1.0.js'></script>
<script src='/resources/js/jquery-ui.js'></script>
<script src="/resources/js/common.js"></script>



</head>
<body>

    <!-- header -->
    <div class="wrap">
        <div class="header">
            <%@ include file="guide/header.jsp"%>
        </div>

    <!-- bbs -->

    <div class='wrap_bbs'>
        <!-- bbs 좌측메뉴 -->
        <div class='side_menu'>
            <div>
                커뮤니티
            </div>
            <ul>
                <li><a3>공지사항</a3></li>
                <li><a3>질문과 답변</a3></li>
                <li><a href='bbs.jsp'><a3>게시판</a3></a></li>
                <li><a3>포토갤러리</a3></li>
                <li><a3>홍보동영상</a3></li>
            </ul>
        </div>
        <!-- bbs 우측내용 -->
        <div class='bbs_content'>
            <div class=''>
                <div class='bbs_maintitle'>
                    <a2>게시판</a2>
                </div>
                <div class='bbs_maincontent'>
                    <table>
                        <thead>
                            <tr>
                                <th><a4>번호</a4></th>
                                <th><a4>제목</a4></th>
                                <th><a4>글쓴이</a4></th>
                                <th><a4>날짜</a4></th>
                                <th><a4>조회</a4></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a5>글 번호</a5></td>
                                <td><a href='bbs_view'><a5>제목</a5></a></td>
                                <td><a5>작성자</a5></td>
                                <td><a5>날짜</a5></td>
                                <td><a5>조회 수</a5></td>
                            </tr>
                        </tbody>
                    </table>
                    <div class='bbs_write'>
                        <div>
                            <div>
                                <input type='bottom' name=''
                                    class='prev_bbs' value='이전'>
                            </div>
                            <div>
                                <input type='bottom' name=''
                                    class='next_bbs' value='다음'>
                            </div>
                        </div>
                        <div class='write_bottom'>
                            <input type='bottom' name=''
                                class='write_bbs' value='글쓰기'>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- footer -->
        <div class="footer">
            <%@ include file="guide/footer.jsp"%>
        </div>
    </div>


</body>
</html>
