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
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script
                src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script
                src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script
                src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
            <header class="site_header" style="    width: 100%;
    height: 64px;">
                <a href="#" class="logo">
                    logo
                </a>
<%--                <h1 class="brand">lo<span class="brand_point">go</span></h1>--%>
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
        <script defer src="./scripts.js"></script>

            <div class="container mt-3" style="padding-top: 150px">
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
                        </div>
                        <div class="carousel-item">
                            <img src="images/fox2.jpg"  width="1100" height="500">
                        </div>
                        <div class="carousel-item">
                            <img src="images/tiger.jpg"  width="1100" height="500">
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
            </div>
    </body>
</html>

