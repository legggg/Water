<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <title>header</title>
    <link rel="stylesheet" href="css/style.css" />
    <style>
        .loginlogout {
            border: none;
            background-color: white;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 17px;
            cursor: pointer;
            margin: 10px;
        }
    </style>
</head>

<body>

<header class="site_header" style="width: 100%; height: 64px;">
    <a href="/main" class="logo">
        logo
    </a>
    <nav style="position: relative; height: 64px;  margin: 0 auto; right:45px">
        <ul class="menu">
            <li><a href="/intro" class="link">소개</a></li>
            <li><a href="/donainglist?c=0" class="link">기부 카테고리</a></li>
            <li><a href="#" class="link">내 주위</a></li>
            <li><a href="#" class="link">기부 스토어</a></li>
        </ul>
    </nav>
    <c:if test="${sessionScope.mbr_id==null }">
        <input type="button" class="loginlogout" onclick="location.href='login'" value="로그인"/>
    </c:if>
    <c:if test="${sessionScope.mbr_id!=null }">

        <!-- 관리자만 관리자페이지 뜸 -->
        <c:if test="${user.verify==9 }">
            <li>
                <input type="button" class="loginlogout" onclick="location.href='indexlist'" value="관리자 화면">
            </li>
        </c:if>

        <input type="button" class="loginlogout" onclick="location.href='mypage'" value="마이페이지">
        <form action="/logout" method="post">
            <input type="submit" class="loginlogout" value="로그아웃">
        </form>
    </c:if>
</header>
</body>
</html>