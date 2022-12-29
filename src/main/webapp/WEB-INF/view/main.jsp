<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Water - 투명하게</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/info.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<%@ include file="header.jsp"%>

<script defer src="./scripts.js"></script>

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




<style>

    .Maincardarea {
        display: block;
        margin: 100px auto 0;
        width: 1140px;
    }


    .Maincardarea_text {
        font-size: 25px;
        font-weight: 900;
        line-height: 1.2;
    }

    .Maincardarea_link {
        color: black;
        display: inline-block;
        vertical-align: top;
    }

    .Maincarearea_icon {
        position: relative;
        width: 12px;
        height: 24px;
        margin: 5px 0 0 8px;
    }

    .Maincarearea_icon::before {
        content: "";
        position: absolute;
        top: 50%;
        left: 50%;
        width: 12px;
        height: 12px;
        -ms-transform: translate(-50%,-50%) rotate(45deg);
        transform: translate(-50%,-50%) rotate(45deg);
        border-top: 2px solid #000;
        border-right: 2px solid #000;
    }


</style>
<div class="Maincardarea">
    <h3 class="Maincardarea_text">
        <a href="#" class="Maincardarea_link" style="text-decoration: none; color: inherit;" > 여기 뭘 적을까 <i class="Maincarearea_icon"></i></a>
    </h3>
<%--    <ul class="Donacard">--%>
<%--        <li><a href="사진" class="Donacard_image">...</a></li>--%>
<%--        <li></li>--%>
<%--        <li></li>--%>
<%--    </ul>--%>

</div>
</body>
</html>

