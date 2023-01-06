<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Water - 투명하게</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="js/scripts.js" defer></script>

    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/info.css" />
    <link rel="stylesheet" href="css/main.css" />
</head>
<body>

<%@ include file="header.jsp"%>


<div class="container mt-3" style="padding-top: 50px; margin: 0 auto; padding-right: 25px;">
    <h2></h2>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ul>
        <!-- The slideshow -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/fox.jpg" width="1100" height="500">
                <%--                            <div class="info">--%>
                <%--                                <p class="name">여우는 줠라 귀엽습니다.</p>--%>
                <%--                                <p class="group">인정 하십니까?</p>--%>
                <%--                                <p class="d-day">인정 합니다.</p>--%>
                <%--                                <div class="progressBar">--%>
                <%--                                    <span class="bar chartAnimate active" style="width: 19%"></span>--%>
                <%--                                </div>--%>
                <%--                                <div class="progressInfo">--%>
                <%--                                    <p class="amount">..</p>--%>
                <%--                                    <p class="percent">..</p>--%>
                <%--                                </div>--%>
                <%--                            </div>--%>
            </div>
            <div class="carousel-item">
                <img src="images/fox2.jpg"  width="1100" height="500">
                <%--                            <div class="info">--%>
                <%--                                <p class="name">여우는 줠라 귀엽습니다.</p>--%>
                <%--                                <p class="group">인정 하십니까?</p>--%>
                <%--                                <p class="d-day">인정 합니다.</p>--%>
                <%--                                <div class="progressBar">--%>
                <%--                                    <span class="bar chartAnimate active" style="width: 19%"></span>--%>
                <%--                                </div>--%>
                <%--                                <div class="progressInfo">--%>
                <%--                                    <p class="amount">..</p>--%>
                <%--                                    <p class="percent">..</p>--%>
                <%--                                </div>--%>
                <%--                            </div>--%>
            </div>
            <div class="carousel-item">
                <img src="images/tiger.jpg"  width="1100" height="500">
                <%--                            <div class="info">--%>
                <%--                                <p class="name">여우는 줠라 귀엽습니다.</p>--%>
                <%--                                <p class="group">인정 하십니까?</p>--%>
                <%--                                <p class="d-day">인정 합니다.</p>--%>
                <%--                                <div class="progressBar">--%>
                <%--                                    <span class="bar chartAnimate active" style="width: 19%"></span>--%>
                <%--                                </div>--%>
                <%--                                <div class="progressInfo">--%>
                <%--                                    <p class="amount">..</p>--%>
                <%--                                    <p class="percent">..</p>--%>
                <%--                                </div>--%>
                <%--                            </div>--%>
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#myCarousel" data-slide="prev" style="width: 10%">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" data-slide="next" style="width: 10%">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
</div>


<div class="Maincardarea">
    <h3 class="Maincardarea_text">
        <a href="#" class="Maincardarea_link" style="text-decoration: none; color: inherit;" > 기부 목록 <i class="Maincarearea_icon"></i></a>
    </h3>
    <ul class="Donacard_list">
        <li style="display: inline-block; vertical-align: top;">
            <c:forEach items="${main1}" var="main1">
            <a href="/view?n=${main1.cntr_sn}" class="Donacard_image">
                <div class="Donacard_imagelist" style="width: 257px; height: 205px; background-color: white; margin-left: 10px">
                    <img src=${main1.cntr_file_id} width="100%" height="200" style="margin-top: 5px;">
                </div>
                <div class="Donacard_content" style="width: 257px; padding:21px 20px 0; margin-left: 10px">
                    <strong class="Donacard_title" style="color: black">${main1.cntr_ttl}</strong>
                    <div class="Donacard_orga" style="color: black;">${main1.cntr_rcvfvr}</div>
                    <div class="Donacard_orga" style="color: black;"><strong>목표금액 : <fmt:formatNumber value="${main1.cntr_obctr}" pattern="#,###"/></strong><span class="text">원</span></div>
                </div>
            </a>
            </c:forEach>
        </li>
    </ul>
</div>

<div class="Maincardarea">
    <h3 class="Maincardarea_text">
        <a href="#" class="Maincardarea_link" style="text-decoration: none; color: inherit;" > 대충 재능 기부 <i class="Maincarearea_icon"></i></a>
    </h3>
    <ul class="Donacard_list">
        <li style="display: inline-block; vertical-align: top;">
            <c:forEach items="${main2}" var="main2">
                <a href="/view?n=${main2.cntr_sn}" class="Donacard_image">
                    <div class="Donacard_imagelist" style="width: 257px; height: 205px; background-color: white; margin-left: 10px">
                        <img src=${main2.cntr_file_id} width="100%" height="200" style="margin-top: 5px;">
                    </div>
                    <div class="Donacard_content" style="width: 257px; padding:21px 20px 0; margin-left: 10px">
                        <strong class="Donacard_title" style="color: black">${main2.cntr_ttl}</strong>
                        <div class="Donacard_orga" style="color: black;">${main2.cntr_rcvfvr}</div>
                        <div class="Donacard_orga" style="color: black;"><strong>목표금액 : <fmt:formatNumber value="${main2.cntr_obctr}" pattern="#,###"/></strong><span class="text">원</span></div>
                    </div>
                </a>
            </c:forEach>
        </li>
    </ul>
</div>

<div class="Maincardarea">
    <h3 class="Maincardarea_text">
        <a href="#" class="Maincardarea_link" style="text-decoration: none; color: inherit;" > 자투리 상품 기부 <i class="Maincarearea_icon"></i></a>
    </h3>
    <ul class="Donacard_list">
        <li style="display: inline-block; vertical-align: top;">
            <c:forEach items="${main3}" var="main3">
                <a href="/view?n=${main3.cntr_sn}" class="Donacard_image">
                    <div class="Donacard_imagelist" style="width: 257px; height: 205px; background-color: white; margin-left: 10px">
                        <img src=${main3.cntr_file_id} width="100%" height="200" style="margin-top: 5px;">
                    </div>
                    <div class="Donacard_content" style="width: 257px; padding:21px 20px 0; margin-left: 10px">
                        <strong class="Donacard_title" style="color: black">${main3.cntr_ttl}</strong>
                        <div class="Donacard_orga" style="color: black;">${main3.cntr_rcvfvr}</div>
                        <div class="Donacard_orga" style="color: black;"><strong>목표금액 : <fmt:formatNumber value="${main3.cntr_obctr}" pattern="#,###"/></strong><span class="text">원</span></div>
                    </div>
                </a>
            </c:forEach>
        </li>
    </ul>
</div>

</body>
</html>