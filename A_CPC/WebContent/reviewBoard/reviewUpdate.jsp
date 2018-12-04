<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="f_vo.Board"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<% Board board = (Board) request.getAttribute("board"); 
   String nowpage = (String)request.getAttribute("page");
%>
<div style="height: 100px">

</div>

<div class="container">
<table class="table table-bordered">
    <thead>
        <caption><h1 align="center">글 수정</h1></caption>
    </thead>
    <tbody>
        <form name="boardform"  action="boardUpdateAction.ac" method="post">
            
            <input type="hidden" value="<%=board.getBoard_num()%>" name="num">
            <input type="hidden" value="<%=nowpage%>" name="page">
            <tr>
                <th><p align="center"> 제목:</p> </th>
                <td><input type="text"  id="board_subject" name="board_subject" class="form-control" required value="<%=board.getBoard_subject()%>"/></td>
            </tr> 
            <tr>
                <th><p align="center"> 작성자:</p> </th>
                <td><input type="text"  id="board_name" name="board_name" class="form-control" required value="<%=board.getBoard_name()%>"/></td>
            </tr> 
            <tr>
                <th><p align="center"> 비밀번호:</p></th>
                <td><input type="password" placeholder="비밀번호를 입력하세요" id="board_pass" name="board_pass" class="form-control" required/></td>
            </tr>
            <tr>
                <th><p align="center"> 글 내용:</p></th>
                <td><textarea cols="10" id="board_content" name="board_content" class="form-control"><%=board.getBoard_content()%></textarea></td>
            </tr>
            <tr>
                <th><p align="center"> 첨부파일:</p></th>
                <td><input type="file" placeholder="파일을 선택하세요. " id="board_file" name="board_file" class="form-control"/></td>
            </tr>
            
            <tr>
                <td colspan="2">
                    <input type="submit" value="수정" class="pull-right"/>
                    <input type="button" value="삭제" class="pull-right" onclick="javascript:location.href='bordDelete.ac?num=<%=board.getBoard_num()%>&page=<%=nowpage%>'"/>
                    <input type="reset" value="다시작성" class="pull-left"/>
                    <input type="button" value="글 목록 " class="pull-right" onclick="javascript:location.href='bordList.ac'"/>
                    <!-- <a class="btn btn-default" onclick="sendData()"> 등록 </a>
                    <a class="btn btn-default" type="reset"> reset </a>
                    <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
                </td>
            </tr>
        </form>
    </tbody>
</table>
</div>
</body>
</html>