<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                kappa </div>
                
                <div><label>이름</label>
                배두나</div>
                
                <div><label>이메일</label>
                kappa@gmail.com</div>
                
                <div><label>가입일</label>
                2021.12.28 11:11:24</div>
            </div>
        </div>
    
       <%@ include file="templates/header.jsp" %>
    </div>
</body>
</html>