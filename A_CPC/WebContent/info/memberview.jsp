<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="f_vo.Member"%>
<!DOCTYPE html>
<html>
<head>
<style >
table {
border-style:  double;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% Member member = (Member) request.getAttribute("memberView"); %>
<h1><%=member.getName()%>님의 상세 정보</h1>
<table>
<tr>
<td><h1>회원 아이디 : <%=member.getId()%></h1></td>
</tr>
<tr>
<td><h1>회원 생년월일 : <%=member.getDirthday()%></h1></td>
</tr>
<tr>
<td><h1>회원 연락처 : <%=member.getPhonenum()%></h1></td>
</tr>
<tr>
<td><h1>회원 전자우편 : <%=member.getEmail()%></h1></td>
</tr>
<tr>
<td><h1>회원 년도 : <%=member.getYy()%></h1></td>
</tr>
<tr>
<td><h1>회원 성별 : <%=member.getGender()%></h1></td>
</tr>
<tr>
<td><h1><a href="./listAction.ac">리스트 돌아가기</a></h1></td>
</tr>
</table>



</body>
</html>