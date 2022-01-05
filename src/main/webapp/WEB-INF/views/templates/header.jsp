<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <header>
   <h1>세미프로젝트v1</h1> <!-- 타이틀 -->
   <nav>
       <ul>
           <li><a href="index">Home</a></li>
           <li><a href="join">회원가입</a></li>
           
           <c:if test="${empty sessionScope.userid}">
           <li><a href="login">로그인</a></li>
           </c:if>
           
           <c:if test="${not empty sessionScope.userid}">
           <li><a href="logout">로그아웃</a></li>
           </c:if>
           
           <li><a href="list">게시판</a></li>
           <li><a href="myinfo">회원정보</a></li>
       </ul>
   </nav> <!-- 상단메뉴 -->
   <hr> <!-- 구분선 -->
</header>