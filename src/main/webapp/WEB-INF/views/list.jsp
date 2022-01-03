<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>SemiProjectV1-liset</title>
    <link rel="stylesheet" href="css/base.css">
    <style>
        table { width: 75%; margin: 25px auto; 
                border-collapse: collapse; table-layout: fixed; }
        /* 테이블 여백, 테두리 설정, 크기 고정 */
        
        th, td { border: 1px solid black; padding: 10px;
                 text-align: center }
        
        td:nth-of-type(2) { white-space: nowrap;
                            overflow: hidden; text-overflow: ellipsis }
        /* 2번째 td 줄바꿈 제거, 넘치는 글자는 숨김 후 줄임표시 */
        
        tr:last-child td { border: none; }
        /* 맨마지막 행의 모든 td들의 테두리 제거 */
        
        .cpage { color: red; font: 35px bold; }
        /* 현재페이지 스타일 지정 */
        
    </style>
</head>
<body>
    <div id="container">
       <%@ include file="templates/header.jsp" %>
    
        <div id="main">
            <h3>게시판</h3>
            <table>
               <colgroup>
                   <col style="width:10%">
                   <col style="width:">
                   <col style="width:15%">
                   <col style="width:15%">
                   <col style="width:10%">
               </colgroup> <!-- 테이블컬럼스타일 -->
               
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>조회수</th>
                    </tr>
                </thead> <!-- 제목행 -->
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>23</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>24</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    <tr>
                        <td>25</td>
                        <td>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 참말이라구, 친구!</td>
                        <td>kappa</td>
                        <td>2021-12-28</td>
                        <td>887</td>
                    </tr>
                    
                    <tr>
                        <td colspan="5">
                            <span> ◁ ◀
                            <span class="cpage">1</span> 2 3 4 5 6 7 8 9 10 ▶ ▷ </span>
                        </td>
                    </tr>
                </tbody> <!-- 본문행 -->
            </table>
        </div>
    
        <%@ include file="templates/header.jsp" %>
    </div>
</body>
</html>