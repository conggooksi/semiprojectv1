<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>SemiProjectV1-index</title>
    <style>
        * { margin: 0; padding: 0; list-style: none; }
        /* css reset */
        
        #container { /*border: 1px solid red;*/
               width: 970px; margin:0 auto; }
        /* 전체 레이아웃 지정 */ 
        
        nav ul { padding-top: 25px; }
        nav ul li { float: left; margin-left: 120px;
                    padding-bottom: 10px }
        /* 네비게이션 메뉴 */
        
        hr { clear: both; 
                 height: 2px; background: black }
        /* 구분선 - 두께, 배경색 지정 */
        
        #main { min-height: 550px }
        /* 메인 영역 */
        
        footer p { text-align: center; margin: 5px 0; }
        /* 푸터 영역 */
        
        a { font-weight: bold; }
        a:link { text-decoration: none; color: black }
        a:visited { text-decoration: none; color: black }
        a:hover { text-decoration: underline; color: red }
        a:active { text-decoration: underline; color: orange }
        /* 링크에 대한 스타일 - 밀줄제거, 링크색상 고정  */
        
    </style>
</head>
<body>
   <div id="container">
      <%@ include file="templates/header.jsp" %>
       
       <div id="main">
          ${msg}
       </div>
       
     <%@ include file="templates/footer.jsp" %>
   </div>
</body>
</html>