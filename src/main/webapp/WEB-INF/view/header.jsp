<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <title>header</title>
    <link rel="stylesheet" href="css/style.css" />
</head>

<body>
    <header class="site_header" style="    width: 100%;
        height: 64px;">
        <a href="#" class="logo">
            logo
        </a>
        <nav  style="position: relative; top:10px; text-align: center">
            <ul class="menu">
                <li><a href="#">소개</a></li>
                <li><a href="#">기부 카테고리</a></li>
                <li><a href="#">내 주위</a></li>
                <li><a href="#">기부 스토어</a></li>
            </ul>
        </nav>
        <input type="button" onclick="location.href='login'" value="로그인" style="border: none; background-color: white; font-family: 'Noto Sans KR', sans-serif"/>
    </header>
</body>
</html>