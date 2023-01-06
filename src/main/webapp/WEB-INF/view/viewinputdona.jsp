<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>기부를 해주세요</title>
</head>

<style>

    @charset "UTF-8";
    *{
        margin: 0;
        padding:0;
    }

    label {
        font-weight: bold;
        display: block;
        font-size: 22px;
    }

    /* 화면 전체 렙 */
    .wrapper{
        vertical-align: middle;
    }

    /* content 랩 */
    .wrap{
        width : 700px;
        margin: auto;
    }

    /* 페이지 로고 */
    .logo_wrap{
        text-align: center;
        margin-top: 50px;
        margin-bottom: 30px;
    }
    .logo_wrap>a{
        font-size : 50px;
        font-weight: 900;
    }
    .logo{
        width: 300px;
        height: 150px;
        display: inline-block;
        background: url(../images/logo.png) 0 0 no-repeat;
        background-size: contain;
        overflow: hidden;
        text-indent: -9999px;
        vertical-align: bottom;
    }

    /* 페이지 제목 */
    .subjecet{
        width: 100%;
        height: 100px;
        background-color: #97DECE;
        margin-top: 150px;
        margin-bottom: 30px;
    }
    .subjecet span{
        margin-left: 31px;
        font-size: 70px;
        font-weight: 800;
        color: white;
        justify-content: center;
        align-items: center;
        display: flex;
    }

    /* 아이디 영역 */
    .id_wrap{
        width: 100%;
        margin-top: 20px;
    }
    .id_input{
        width:100%;
        height:100%;
        font-size:28px;
    }

    /* float 속성 해제 */
    .clearfix{
        clear: both;
    }

    /* 버튼 */
    .button_wrap{
        margin-top: 20px;
    }
    .login_button_wrap{
        margin-top: 20px;
        text-align: center;
    }
    .login_button{
        width: 100%;
        height: 60px;
        background-color: #62B6B7;
        font-size: 40px;
        font-weight: 900;
        color: white;
        margin : auto;
        cursor:pointer
    }




</style>

<body>
<%@ include file="donaing.jsp"%>


<div id="wrapper">
    <div class="wrap">
        <div>
            <h2>${viewinput.cntr_ttl}</h2>
            <h4 style="font-weight: lighter">${viewinput.cntr_rcvfvr}</h4>
        </div>
        <form role="form" method="post">
            <input type="hidden" name="cntr_sn" value="${viewinput.cntr_sn}" />
            <div class="id_wrap">
                <label>기부자명</label>
                <input class="id_input" type="text" id="btn_nm" name="btn_nm" style="border: solid"/>
            </div>
            <div class="id_wrap">
                <label>기부금액을 쓰시오</label>
                <input class="id_input" type="text" id="btr_pc" name="btr_pc" style="border: solid"/>
            </div>
            <div class="button_wrap">
                <div class=login_button_wrap">
                    <button class="login_button" type="submit" id="makeDona_Btn" >기부하기</button>
                </div>
            </div>
        </form>
    </div>
</div>


</body>
</html>