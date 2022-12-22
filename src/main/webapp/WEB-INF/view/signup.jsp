<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>회원가입</title>
    </head>

    <body>
        <form action="/signup" method="post">
            <div class="mb-3">
                <label>회원구분</label>
                기부자<input type="radio" name="mbr_se" value="0" />
                개인 수혜자<input type="radio" name="mbr_se" value="1" />
                기관 수혜자<input type="radio" name="mbr_se" value="2" />
            </div>
            <div>
                <label>이름</label>
                <input type="text" id="mbr_nm" name="mbr_nm" required>
            </div>
            <div>
                <label>아이디</label>
                <input type="text" id="mbr_id" name="mbr_id" required>
            </div>
            <div>
                <label>비밀번호</label>
                <input type="password" id="mbr_password" name="mbr_password" required>
            </div>

            <div>
                <button type="submit">가입하기</button>
                <button type="button">취소</button>
            </div>
        </form>
    </body>
</html>