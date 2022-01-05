<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>SemiProjectV1-join</title>
    <link rel="stylesheet" href="css/base.css">
    <style>
        #login { /*border: 1px solid red;*/
            width: 320px; margin: 120px auto; }
        
        #login div { margin-bottom: 10px; }
        #login label { display: inline-block; width: 120px;
                text-align: right; font-weight: bold }
        
        #login input, #login button { padding: 5px }
        
        button[type="button"] { margin-left: 125px; }
    </style>
</head>
<body>
   <div id="container">
       <%@ include file="templates/header.jsp" %>
       
       <div id="main">
          <h2>로그인</h2>
          <form name="login" id="login">
              <div><label for="userid">아이디</label>
              <input type="text" name="userid" id="userid"></div>
              
              <div><label for="passwd">비밀번호</label>
              <input type="password" name="passwd" id="passwd"></div>
              
              <div><button type="button" id="loginbtn">로그인</button></div>
          </form>
       </div>
       
       <%@ include file="templates/footer.jsp" %>
   </div>
   <script>
   	// es2015 (javascript -> emcascript)
   	// vanillaJS - no framework
   	let loginbtn = document.getElementById('loginbtn');
   	let loginfrm = document.getElementById('login');
   	
   	loginbtn.addEventListener('click', checkloginfrm);
   	
   	function checkloginfrm() {
   		// 폼의 입력폼에 접근하는 방법 1 : getElementById
   		let userid = document.getElementById('userid');
   		// 폼의 입력폼에 접근하는 방법 2 : document.폼이름
   		let passwd = document.login.passwd;
   		
   		if(userid.value == '') alert('아이디를 입력하세요!');
   		else if(passwd.value == '') alert('비밀번호를 입력하세요!');
   		else{
   			loginfrm.method = "post";
   			loginfrm.submit();
   		}
   	}
   
   </script>
   
</body>
</html>