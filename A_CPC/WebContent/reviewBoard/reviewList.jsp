<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*"%>
	<%@ page import="f_vo.Board"%>
	<%@ page import="f_vo.PageInfo"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width" , initial-scale="1.0">

<link rel="stylesheet" href="css/bootstrap.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>어린이 피자교실</title>

<style>
a, a:hover {
	color: #000000;
	text-decoration: none;
}
</style>

</head>

<body>
	<%
		ArrayList<Board> boardList = (ArrayList<Board>)request.getAttribute("boardList");
		PageInfo pageinfo = (PageInfo)request.getAttribute("pageInfo");
		int nowPage = pageinfo.getPage();
		int startPage = pageinfo.getStartPage();
		int endPage = pageinfo.getEndPage();
		int maxPage = pageinfo.getMaxPage();
		int listPage = pageinfo.getListCount();
		
	%>
	
	<h1 align="center">어린이 피자교실 후기 게시판</h1>
	
	<div class="container">

		<div class="row">

			<table class="table table-striped"
				style="text-align: center; border: 1px;">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
					<%for (int i = 0; i < boardList.size(); i++) {%>
		<tr>
			<td><%=boardList.get(i).getBoard_num()%></td>

			<td><a href="boardViewAction.ac?num=<%=boardList.get(i).getBoard_num()%>&page=<%=nowPage%>"><%=boardList.get(i).getBoard_subject()%></a></td>
		<%-- 	<%session.setAttribute("bnum", boardList.get(i).getBoard_num());%> --%>
			<td><%=boardList.get(i).getBoard_name()%></td>
			<td><%=boardList.get(i).getBoard_date()%></td>
			</tr>
		<% } %>
				</thead>
				<tbody>
					<tr>
					<td></td>
					</tr>
				</tbody>

			</table>


			<a href="boardWriteForm.ac" class="btn btn-primary pull-right">글쓰기</a>

		</div>

	</div>

<!-- 페이지 정보및 링크 -->
<%if(nowPage<=1){ %>
        [이전]&nbsp;
     <%}else{ %>
        <a href="boardList.ac?page=<%=nowPage-1%>">[이전]</a>&nbsp;
     <%} %>
​
     <%for(int a=startPage; a<=endPage; a++){
           if(a==nowPage){%>
        [<%=a%>]
     <%}else{ %>
     <a href="boardList.ac?page=<%=a%>">[<%=a%>]
     </a>&nbsp;
     <%} %>
     <%} %>
​
     <%if(nowPage>=maxPage){ %>
     [다음]
     <%}else{ %>
     <a href="boardList.ac?page=<%=nowPage+1%>">[다음]</a>
     <%} %>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script src="js/bootstrap.min.js"></script>

</body>

</html>