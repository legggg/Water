<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>관리자페이지</title>
</head>

<style>
    body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
    ul { padding:0; margin:0; list-style:none;  }

    div#root { width:90%; margin:0 auto; }

    section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
    section#container::after { content:""; display:block; clear:both; }
    aside { float:left; width:1000px; }
    div#container_box { float:right; width:calc(100% - 200px - 20px); }

    aside ul li { text-align:center; margin-bottom:10px; margin-left: 100px; display:inline;}

    aside ul li a { display:inline; width:100%; padding:10px 10px 10px 10px;}
    aside ul li a:hover { background:#eee; }
</style>

<body>
<%@ include file="header.jsp"%>

<section id="container">
    <aside>
        <ul>
            <li><a href="/indexregister">기부글 등록</a></li>
            <li><a href="/indexlist">기부글 목록</a></li>
            <li><a href="">기부 후기글</a></li>
            <li><a href="">유저 목록</a></li>
        </ul>
    </aside>
</section>

</body>
</html>