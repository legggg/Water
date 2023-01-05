<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>진행중인 기부 자세히</title>
</head>

<body>
<%@ include file="donaing.jsp"%>


<style>

    * {
        font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
    }

    body{
        background-color: #fff;
        -webkit-font-smoothing: antialiased;
        min-height: 1590px;
    }

    div {
        display: block;
    }

    #container{
        padding-bottom: 0;
        width: 100%;
        position: relative;
        overflow: hidden;
        margin: 0;
    }

    .collect_wrap{
        width: 1098px;
        margin: 0 auto 90px;
        border-bottom: 1px solid #e5e5e5;
        background: url(https://ssl.pstatic.net/happyimg2/img/mainhome/bg_crowd.gif) repeat-y;
    }

    .collect_wrap::after{
        content: '';
        display: table;
        width: 100%;
        clear: both;
    }

    .collect_wrap .content_content {
        float: left;
        width: 800px;
        padding: 60px 94px 90px;
        font-size: 16px;
    }

    .collect_wrap .theme {
        padding-bottom: 16px;
        font-size: 17px;
        font-weight: 400;
        color: black;
        letter-spacing: -.06em;
        line-height: 1;
    }

    .collect_wrap .title {
        font-size: 36px;
        font-weight: 400;
        color: #222;
        letter-spacing: .4px;
        line-height: 40px;
        margin: 20px 0 50px;

    }

    .intro_list {
        margin: 0;
        overflow: hidden;
    }

    .editor_base{
        line-height: 1.5;
    }

    ol, ul{
        list-style: none;
    }

    .intro_list li dt{
        font-weight: 700;
        font-size: 20px;
        color: #444;
        line-height: 30px;
        letter-spacing: 1px;
    }

    .intro_list li dd{
        margin-top: 16px;
        font-size: 18px;
        color: #666;
        line-height: 32px;
        text-align: justify;
        letter-spacing: -.01px;
    }

    .collect_wrap .content_side {
        float: right;
        width: 282px;
        font-size: 15px;
    }

    .content_side .tit {
        padding-top: 24px;
        padding-bottom: 24px;
        text-align: center;

    }

    .content_side .bt {
        display: inline-block;
        width: 282px;
        height: 60px;
        padding-top: 17px;
        border: 1px solid rgba(0,0,0,.1);
        background: #439A97;
        font-size: 22px;
        font-weight: 700;
        color: #fff;
        text-decoration: none;
        text-shadow: 0 0 1px #086a1e;
        text-align: center;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        overflow: hidden;
    }




</style>

<div id="container">
    <div class="collect_wrap">
        <div class="content_content">
            <h2 class="theme"></h2>
            <h3 class="title">${view.cntr_ttl}</h3>
<%--            <ul class="collect_tab" id="collect_tab"></ul>--%>
            <div class="tab_content">
                <ul class="intro_list editor_base">
                    <li>
                        <dl>
                            <dt id="paraTitle" style="padding-bottom: 20px"><img src=${view.cntr_file_id} alt width="100%" height="300" class="card_img"></dt>
                            <dd id="paraContent">${view.cntr_cn}</dd>
                        </dl>
                    </li>

                    <%--! 여기서 늘리면됨 --%>
<%--                    <li>--%>
<%--                        <dl>--%>
<%--                            <dt id="paraTitle">소제목</dt>--%>
<%--                            <dd id="paraContent">${view.cntr_cn}</dd>--%>
<%--                        </dl>--%>
<%--                    </li>--%>
                </ul>
            </div>
        </div>

        <div class="content_side">
            <div class="section_title"><p class="tit">${view.cntr_ttl}</p></div>
            <div class="section_status"></div>
            <div class="section_btn"><a href="#" class="bt donate jq_donate" data-google="모금함_View" data-stat="기부하기_상단_BTN_CLK">모금함 기부하기</a> </div>
        </div>

<br>

<%--<div>--%>
<%--    <form role="form" method="post">--%>
<%--        <input type="hidden" name="cntr_sn" value="${view.cntr_sn}" />--%>
<%--        <div>--%>
<%--            <label>기부금액을 쓰시오</label>--%>
<%--            <input type="text" id="btr_pc" name="btr_pc" style="border: solid"/>--%>
<%--        </div>--%>
<%--        <div>--%>
<%--            <button type="submit" id="makeDona_Btn" >보내기</button>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>


</body>
</html>