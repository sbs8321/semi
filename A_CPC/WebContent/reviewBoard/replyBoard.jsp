<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>이테리 장인과 함께 하는 피자교실</title>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>

<body>
<div class="container">
<table class="table table-bordered">
    <thead>
        <caption><h1 align="center">답변 글 쓰기</h1></caption>
    </thead>
    <tbody>
        <form name="boardform"  action="replyboardWritePro.ac" method="post"  >
            <tr>
                <th><p align="center"> 제목:</p> </th>
                <td><input type="text" placeholder="제목을 입력하세요." id="board_subject" name="board_subject" class="form-control" required/></td>
            </tr> 
            <tr>
                <th><p align="center"> 작성자:</p> </th>
                <td><input type="text" placeholder="작성자 를  입력하세요." id="board_name" name="board_name" class="form-control" required/></td>
            </tr> 
            <tr>
                <th><p align="center"> 비밀번호:</p></th>
                <td><input type="password" placeholder="비밀번호를 입력하세요" id="board_pass" name="board_pass" class="form-control" required/></td>
            </tr>
            <tr>
                <th><p align="center"> 글 내용:</p></th>
                <td><textarea cols="10" placeholder="내용을 입력하세요. " id="board_content" name="board_content" class="form-control"></textarea></td>
            </tr>
            <tr>
                <th><p align="center"> 첨부파일:</p></th>
                <td><input type="file" placeholder="파일을 선택하세요. " id="board_file" name="board_file" class="form-control"/></td>
            </tr>
            
            <tr>
                <td colspan="2">
                    <input type="submit" value="등록" class="pull-right"/>
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