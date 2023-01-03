<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>관리자페이지</title>
</head>

<style>
    ul { padding:0; margin:0; list-style:none;  }
    section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
    section#container::after { content:""; display:block; clear:both; }
</style>

<body>
<%@ include file="header.jsp"%>

<section id="container">
    <%@ include file="indexaside.jsp"%>
</section>

</body>
</html>