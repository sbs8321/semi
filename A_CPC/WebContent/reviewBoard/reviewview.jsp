<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="f_vo.Board"%>
<%@ page import="f_vo.re_Board"%>
<%@ page import="f_vo.Member"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <% Board board = (Board) session.getAttribute("board");
   Member member = (Member)session.getAttribute("loginMember");
%> --%>

<% Board board = (Board) request.getAttribute("board");
   Member member = (Member)session.getAttribute("loginMember"); 
   String nowpage = (String)request.getAttribute("page");
%>



<div style="border-style: solid; width: 200px; height: 50px;">
<strong>글이름 : <%=board.getBoard_subject() %><%=nowpage%><%=board.getBoard_num() %></strong>
</div>

<div style="border-style: solid; width: 200px; height: 25px;">
글쓴이 : <%=board.getBoard_name()%>
</div>
           
<div style="border-style: solid; width: 200px; height: 250px;">
글내용 :<%=board.getBoard_content() %>
</div>
<div style="border-style: solid; width: 200px; height: 25px;">
첨부파일: <a href="boardFileDown.ac?fileDown=<%board.getBoard_file();%>"><%=board.getBoard_file()%></a>
</div>
<div style="border-style: solid; width: 200px; height: 25px;">
작성시간: <%=board.getBoard_date()%>
</div>
<div style="border-style: solid; width: 200px; height: 25px;">
조회수: <%=board.getBoard_readcount()%>
</div>
<div>
<input type="button" value="글 목록 " class="pull-right" onclick="javascript:location.href='bordList.ac'"/>
<!-- <input type="button" value="글 답변 " class="pull-right" onclick="javascript:location.href='boardreply.ac'"/>-->
<input type="button" value="글 수정 " class="pull-right" onclick="javascript:location.href='boardUpdate.ac?num=<%=board.getBoard_num()%>&page=<%=nowpage%>'"/>
</div>
<div>



<form action="replyWrite.ac">
<%ArrayList<re_Board> reBoardList = (ArrayList<re_Board>) request.getAttribute("reboardList"); %>
<table>
<%if(reBoardList == null){ %>

<%}else{ 
	for(int i = 0; i<reBoardList.size(); i++){%>
	<tr><td><%=reBoardList.get(i).getRe_board_name()%>:</td> 
		<td><%=reBoardList.get(i).getRe_board_content()%></td> 
		<td><%=reBoardList.get(i).getRe_board_date()%></td>
		<!-- <td><input type="button" value="답글"  onclick="javascript:location.href=replyRebord.ac'"/></td>  대댓글 달기용 -->
		<%if(reBoardList.get(i).getRe_board_name().equals(member.getId())){ %>
		<td><a href="rebordDelete.ac?bnum=<%=reBoardList.get(i).getRe_board_num()%>&page=<%=nowpage%>>&num=<%=board.getBoard_num()%>">삭제</a></td>
		<%} %>
	</tr>
	<%}
	} %>
<tr>
<td><h1><%=member.getId()%>:</h1></td><td><input type="text" name="re_board_content" style="height: 50px;" ></td>
</tr>
<tr>
<td>
<input type="hidden" value="<%=board.getBoard_num()%>" name ="num"/>
<input type="hidden" value="<%=nowpage%>" name ="page"/>
<input type="submit" value="등록"/>
</td>
</tr>
</table>

</form>

</div>

</body>
</html>