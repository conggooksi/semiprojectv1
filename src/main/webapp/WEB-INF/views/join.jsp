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
        #join { /*border: 1px solid red;*/
            width: 320px; margin:120px auto; }
        /* 회원가입폼 배치 */
        
        #join div { margin-bottom: 10px; }
        #join label { display:inline-block; width: 120px;
                text-align: right; font-weight: bold }
        /* 입력요소 레이블 크기 및 정렬 지정 */
        
        #join input, #join button { padding: 5px }
        /* 입력요소, 버튼 크기 지정 */
        
        button[type="button"] { margin-left: 125px;
                        margin-right: 5px }
        /* 버튼 여백 지정 */
    </style>
</head>
<body>
   <div id="container">
       <%@ include file="templates/header.jsp" %>
       
       <div id="main">
          <h2>회원가입</h2>
          <form name="join" id="join">
              <div><label for="userid">아이디</label>
              <input type="text" name="userid" id="userid"></div>
              
              <div><label for="passwd">비밀번호</label>
              <input type="password" name="passwd" id="passwd"></div>
              
              <div><label for="repasswd">비밀번호확인</label>
              <input type="password" name="repasswd" id="repasswd"></div>
              
              <div><label for="name">이름</label>
              <input type="text" name="name" id="name"></div>
              
              <div><button type="button" id="joinbtn">입력완료</button><button type="reset">다시입력</button></div>
          </form>
       </div>
       
       <%@ include file="templates/footer.jsp" %>
   </div>
   
   <script>
     let joinbtn = document.getElementById("joinbtn");
     let joinfrm = document.getElementById("join");
	 
     joinbtn.addEventListener('click', checkjoinfrm);
	
     function checkjoinfrm(){
	     let userid = document.getElementById("userid");
	     let passwd = document.getElementById("passwd");
	     let repasswd = document.getElementById("repasswd");
	     let name = document.getElementById("name");
	     
	     if (userid.value == "") alert("아이디를 입력하세요!");
	     else if (passwd.value == "") alert("비밀번호를 입력하세요!");
	     else if (repasswd.value == "") alert("비밀번호 확인을 입력하세요!");
	     else if (name.value == "") alert("이름을 입력하세요!");
	     else if (passwd.value != repasswd.value) alert("비밀번호가 서로 일치하지 않아요!");
	     else {
	    	 joinfrm.method = "post";
	    	 joinfrm.submit();
	     }
	     
     }
   </script>
</body>
</html>