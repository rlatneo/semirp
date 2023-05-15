<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.table thead tr th{background: rgba(224, 224, 224, 0.51);}
	.tablediv{
		width: 800px;
		text-align: center;
		display: block;
		margin: 0 auto;
	}
	.pagination { display: flex; justify-content: center; align-items: center; }

	.pagination a { color: #1abc9c; }

	.pagination a:hover {color: black;}
	.faqbtn{
		background: rgb(26, 188, 156);
	 	color: white;
	 	border: none;
	 	border-radius: 10px;
	 	padding: 10px;
	}
	#faqbtn{text-align: left; width: 800px; margin: 0 auto;}
	#box{padding: 3px 4px;}
	.search{
		
	}
	button{
		width: 60px; height: 33px;
		background-color: white;
	}
	#img {margin-left: 6.5px; margin-top: 6px; width: 27px; height: 27px;}
	.trash {display:inline-block; border: 1px solid lightgray; border-radius: 10px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
 			margin-left: 94%; width: 42px; height: 42px;}
 	.write{
 		display:inline-block; margin-left: 94%; width: 60px; height: 50px; justify-content: center; align-items: center;
 	}
 	#write{
 		border: 1px solid gray; margin-left: 92%; width: 65px; height: 40px; border-radius: 10px;
 		margin-bottom: -90px;
 	}
 	#detail{cursor: pointer;}
 	#detail:hover {text-decoration: underline;}
</style>
</head>
<body>
	<%@ include file="../common/top.jsp" %>
	<%@ include file="../common/adminSideBar.jsp" %>
	<div id="wrapper" class="toggled">
        <div id="page-content-wrapper">
	    	<div class="container-fluid">
	        	<div class="container text-center">
					 <h4 style="margin-right: 580px;"><b>자주 묻는 질문 관리</b></h4>
					    <br>
					    <div id="faqbtn">
						<br>
						<span class="trash">
							<img src="../../img/trash.png" id="img"/>
						</span>
				    		<div class="tablediv" id="faqD">
							    <table class="table">
							    	<thead>
								    	<tr>
								    		<th>글 번호</th>
								    		<th>제목</th>
								    		<th>작성자</th>
								    		<th>작성일</th>
								    		<th>답변여부</th>
								    		<th>분류</th>
								    		<th>활성화여부</th>
								    		<th>선택</th>
								    	</tr>
							    	</thead>
							    	<tbody>
							    		<c:forEach items="${qList}" var="q">
									    	<tr>
									    		<td>${q.qnaNo}</td>
									    		<td>
									    			<a href="${contextPath}/admin_QNA_Detail.ad?page=${page}&qId=${q.qnaNo}">${q.qnaTitle}</a>
								    			</td>
									    		<td>${q.memberName}</td>
									    		<td>${q.questionDate}</td>
									    		<td>
									    			<c:if test="${q.qnaAnswer eq null}">답변대기</c:if>
									    			<c:if test="${q.qnaAnswer ne null}">답변완료</c:if>
									    		</td>
									    		<td>${q.qnaCategory}</td>
									    		<td>
									    			<c:if test="${q.qnaStatus eq 'Y'}">활성화</c:if>
									    			<c:if test="${q.qnaStatus eq 'N'}">비활성화</c:if>
									    		</td>
									    		<td><input type="checkbox" name="delete"></td>
									    	</tr>
									    </c:forEach>
							    	
							    	</tbody>
						    	</table>
						    </div>
					    </div>
					    <br>
					    
					    <%@ include file="../common/paging.jsp" %>
						
						<br>
						<div>
							<select class="search" style="padding: 3px 4px;">
								<option>제목</option>
								<option>작성자</option>
							</select>
							<input type="text" style="border-radius: 8px; padding: 3px 3px; border: 1px solid gray; margin-right: 5px;">
							<button onclick="location.href='';"  style="border-radius: 8px; padding: 3px 3px; border: 1px solid gray; margin-right: 5px;">조회</button>
							<button onclick="location.href='QnA_main.jsp';"  style="border-radius: 8px; padding: 3px 3px; border: 1px solid gray; margin-right: 5px;">목록</button>
						</div>
					</div>
	            </div>
	        </div>
	     </div>
	    <br><br><br><br><br><br><br><br><br><br><br><br><br>
		<footer>
			<%@ include file="../common/bottom.jsp" %>
		</footer>
</body>
</html>