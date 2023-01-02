<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>진행중인 기부 현황</title>
    <link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
    <link rel="stylesheet" href="donainglist.css">
    <style>
        div {
            display: block;
        }
        .card_wrap {
            width: 1164px;
            margin: 12px 0 -24px -24px;
            clear: both;
        }
        .card {
            float: left;
            position: relative;
            width: 267px;
            height: 363px;
            margin: 0 0 24px 24px;
            background-color: #fff;
            font-family: NanumSquareWebFont,dotum,Sans-serif;
            text-decoration: none;
            color: inherit;

        }

        .card::after {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            border: 1px solid rgba(0,0,0,.11);
            content: "";
            margin: 0 auto;
        }


        *, :after, :before {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }
        a:-webkit-any-link {
            color: -webkit-link;
            cursor: pointer;
            text-decoration: underline;
        }
        .content {
            width: 1140px;
            margin: 60px auto 0;
        }
        .content_title {
            float: left;
            padding-top: 7px;
            padding-bottom: 14px;
            font-size: 19px;
            font-weight: 400;
            line-height: 22px;
            letter-spacing: -.5px;
            color: #333;
            font-weight: bold;
        }
        h3 {
            display: block;
            margin-block-start: 1.5em;
            margin-block-end: 1.5em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            font-weight: bold;
        }
        .wrap {
            min-width: 1140px;
        }
        .card .card_img {
            vertical-align: top;
        }
        fieldset, img {
            border: 0;
        }
        img[Attributes Style] {
            width: 267px;
            aspect-ratio: auto 267 / 200;
            height: 200px;
        }
        img {
            overflow-clip-margin: content-box;
            overflow: clip;
        }
        .card .card_content {
            padding: 21px 20px 0;
        }
        .card .card_title {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            height: 50px;
            line-height: 25px;
            word-wrap: break-word;
            word-break: break-all;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            font-size: 19px;
            letter-spacing: -.5px;
            color: #333;
            font-weight: 900;
        }

        body {
            background-color: whitesmoke;
        }
    </style>

</head>

<body>
<div class="wrap">
    <div >
        <%@ include file="donaing.jsp"%>
    </div>
    <div role="main" class="content">
        <h3 class="content_title">여러분들의 소중한 기부를 기다리고 있어요</h3>
            <div class="card_wrap">
                <c:forEach items="${donainglist}" var="donainglist">
                    <a class="card" href="/view?n=${donainglist.cntr_sn}" style="text-decoration: none; color: black;">
<%--                        <img src="https://bakey-api.codeit.kr/files/629/images/sunglasses.jpg" alt width="267" height="200" class="card_img">--%>
                        <img src=${donainglist.cntr_file_id} alt width="267" height="200" class="card_img">
                        <div class="card_content">
                            <strong class="card_title">${donainglist.cntr_ttl}</strong>
                            <div>${donainglist.cntr_adres}</div>
                            <strong>목표금액 : <fmt:formatNumber value="${donainglist.cntr_obctr}" pattern="#,###"/> <span class="text">원</span></strong>
                        </div>
                    </a>
                </c:forEach>
            </div>
    </div>
</div>
</body>
</html>