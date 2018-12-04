<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body >
<%String num = (String)request.getParameter("num"); %>
<% String nowpage = (String)request.getParameter("page"); %>
<form action="boardChack.ac" method="post">
<div style="width: 600px; height: 150px; border-style: solid; ">
<table>
<tr>
<td style="width: 200px;height: 100px;"><h1><strong>&nbsp;&nbsp;비밀번호 :</strong></h1></td><td><input type="password" name="pass" placeholder="비밀번호 입력" required="required" style="width: 400px; height:100px; "></td>
</tr>
<tr>
<td>
<input type="hidden" value="<%=num%>" name="num">
<input type="hidden" value="<%=nowpage%>" name="page">
<input type="submit" value="확인 " >
</td>
</tr>
</table>



</div>
</form>
</body>
</html>