<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="f_vo.Member"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <head>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>이테리 장인과 함께 하는 피자교실</title>

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="../vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../css/creative.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="./mainform.ac">이린이 피자 교실</a>
        </div></nav>


    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
         	<h1 class="text-uppercase">
              <strong style="color: white;">직원 추가</strong>
            </h1>
            
            
            
            
            <form action="Em_addAction.ac" method="post" style="border-style: double;">
          	<div style="height: 15px"></div>
            <div><input type="text" id="name" name="name" placeholder="이름" required="required" style="width: 410px; height: 40px;"/></div>
            <div style="height: 10px"></div> 
            <div><input type="text" id="age" name="age" placeholder="나이" required="required" style="width: 410px; height: 40px;"/></div>
            <div style="height: 15px"></div>
            <div><input type="text" id="address" name="address" placeholder="주소" required="required" style="width: 410px; height: 40px;"/></div>
            <div style="height: 15px"></div>
           <div>
           <select  name="phone1" style="height: 40px;width: 120px;">
      		<option value="010">010</option>
      		<option value="011">011</option>
      		<option value="017">017</option>
      		</select>
            <input type="text" id="phone2" name="phone2" placeholder="전화번호(-없이)" required="required" style="width: 280px; height: 40px; "/>
            </div>
			<div>
           <select  name="phone3" style="height: 40px;width: 120px;">
      		<option value="010">010</option>
      		<option value="011">011</option>
      		<option value="017">017</option>
      		</select>
            <input type="text" id="phone3" name="phone4" placeholder="비상연락망(-없이)" required="required" style="width: 280px; height: 40px; "/>
            </div>
            
            
            
            
            
            
           	 <div style="height: 10px"></div>
             <input type="reset" class="btn btn-primary btn-xl js-scroll-trigger" value="다시작성">
             <input type="submit" class="btn btn-primary btn-xl js-scroll-trigger" value="추가"/>
             <div style="height: 15px"></div>
              </form>
            
            
            
           
          </div>
        </div>
      </div>
    </section>

 

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/creative.min.js"></script>

  </body>

</html>