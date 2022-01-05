<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%-- 로그인 하지 않았다면 로그인 페이지로 강제이동 --%>
<c:if test="${empty sessionScope.userid}">
	<c:redirect url="/login" />
</c:if>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>SemiProjectV1-myinfo</title>
    <link rel="stylesheet" href="css/base.css">
    <style>
        #myinfo { /*border: 1px solid red;*/
                  width: 320px; margin: 120px auto;}
        
        #myinfo div { margin-bottom: 10px }
        #myinfo label { display: inline-block; width: 120px;
                        text-align: right; font-weight: bold }
        
    </style>
</head>
<body>
    <div id="container">
       <%@ include file="templates/header.jsp" %>
    
        <div id="main">
            <h2>회원정보</h2>        
            <div id="myinfo">
                <div><label>아이디</label>
                ${m.userid} </div>
                
                <div><label>이름</label>
                ${m.name}</div>
                
                <div><label>이메일</label>
                ${m.email}</div>
                
                <div><label>가입일</label>
                ${m.regdate}</div>
            </div>
        </div>
    
       <%@ include file="templates/footer.jsp" %>
    </div>
</body>
</html>