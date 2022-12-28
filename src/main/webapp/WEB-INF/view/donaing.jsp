<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>진행중인 기부</title>
    <link rel="stylesheet" href="css/dona.css" />
</head>

<body>
<%@ include file="dona.jsp"%>

<div class="category-theme_area">
    <ul class="category-theme_inner">
        <li class="category-theme_item">
            <a href="/list?c=0">
                <img src="images/child.png" width="70" height="70">
                <figure>아이들</figure>
            </a>
        </li>
        <li class="category-theme_item" >
            <a href="/list?c=1">
                <img src="images/old.png" width="70" height="70">
                <figure>어르신</figure>
            </a>
        </li>
        <li class="category-theme_item">
            <a href="/list?c=2">
                <img src="images/handi.png" alt="장애인" width="70" height="70">
                <figure>장애인</figure>
            </a>
        </li>
        <li class="category-theme_item">
            <a href="/list?c=3">
                <img src="images/animal.png" width="70" height="70">
                <figure>동물</figure>
            </a>
        </li>
        <li class="category-theme_item">
            <a href="/list?c=4">
                <img src="images/etc.png" width="70" height="70">
                <figure>기타</figure>
            </a>
        </li>
    </ul>
</div>
</body>
</html>