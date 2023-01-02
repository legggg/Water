<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>관리자 페이지</title>
    <link rel="stylesheet" href="css/indexmodify.css" />
</head>

<body>
    <%@ include file="index.jsp"%>

    <div class="wrapper">
        <form role="form" method="post" autocomplete="off">
            <input type="hidden" name="cntr_sn" value="${donas.cntr_sn}" />

            <div class="wrap">
            <h2>상품 등록</h2>
                <div class="user_wrap">
                    <label for="cntr_ttl">기부명</label>
                    <input class="user_input" type="text" id="cntr_ttl" name="cntr_ttl" value="${donas.cntr_ttl}" />
                </div>

                <div class="user_wrap">
                    <label for="cntr_cn">기부내용</label>
                    <textarea class="user_input" rows="5" cols="50" id="cntr_cn" name="cntr_cn">${donas.cntr_cn}</textarea>
                </div>

                <div class="se_wrap">
                    <label for="cntr_category">기부대상</label>
                    <select class="se_input" type="text" id="cntr_category" name="cntr_category">
                        <option value="0">어린이</option>
                        <option value="1">어르신</option>
                        <option value="2">장애인</option>
                        <option value="3">동물</option>
                        <option value="4">기타</option>
                    </select>
                </div>

                <div class="se_wrap">
                    <label for="cntr_category2">기부방법</label>
                    <select class="se_input" type="text" id="cntr_category2" name="cntr_category2">
                        <option value="0">기부금</option>
                        <option value="1">재능</option>
                        <option value="2">상품</option>
                    </select>
                </div>

                <!-- 기부방법이 기부금일때만 나오도록 해야하는디.... -->
                <div class="user_wrap">
                    <label for="cntr_obctr">목표금액</label>
                    <input class="user_input" type="text" id="cntr_obctr" name="cntr_obctr" value="${donas.cntr_obctr}"/>
                </div>

                <div class="button_wrap">
                    <div class="login_button_wrap">
                        <button class="register_button" type="submit">수정</button>
                        <button class="back_button" type="button" onclick="delOk()">취소</button>
                    </div>
                </div>
            </div>
        </form>

    </div>

</body>
</html>

<script>
    function delOk(){
        var result = confirm("이전 페이지로 돌아가시겠습니까?");

        if(result) {
            return location.href='indexview?n=${donas.cntr_sn}'
        } else {
            return false
        }
    }
</script>