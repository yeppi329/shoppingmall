<%@page import="vo.Dog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<link href="http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css" rel="stylesheet">
<style type="text/css">

#listForm{
	width:640px;
	border:1px solid lightgray;
	margin:auto;
	background-color:white;

}
h2{
	font-family:'Jeju Myeongjo', serif;
	font-weight:600;
	text-align: center;
	
}
img{
	width: 280px;
	height: 280px;
	border: none;
}
#content_main{
	height:300px;	
}
#content_left{
	width: 300px;
	float:left;
}
#content_right{
	margin-top:40px;
	padding-left:20px;
	padding-top:15px;
	border-left:1px solid lightgray;
	height:183px;
	width: 230px;
	float:left;
	letter-spacing: 1px;

}
#commandList{
	text-align: center;
}
#desc{
	width: 300px;
	height:100px;

}
body{
		background-color:#F0F0F0;
}

.navbar-inverse { background-color: #E80000}
.navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { background-color: #FF8A8A}
.navbar-inverse { background-color: #E80000}
.navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { background-color: #FF8A8A}
.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.open>a,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus { background-color: #FFFFFF}
.navbar-inverse .navbar-brand { color: #FFFFFF}
.navbar-inverse .navbar-brand:hover { color: #FFFFFF}
.navbar-inverse .navbar-nav>li>a { color: #FFFFFF}
.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { color: #000000}
.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus { color: #000000}
.navbar-inverse { border-color: #E09670}
.navbar-inverse .navbar-nav>.active>a:hover, .navbar-inverse .navbar-nav>.active>a:focus { color: #FFFFFF}
	
</style>
</head>
<body >
<div class="container">
<br>
<h2>제품 상세 정보</h2><br>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="dogList.dog">상품</a></li>
        <li><a href="boardList.bo?page=1">게시판</a></li>
        <li><a href="memberLogin.me">게시판 글쓰기</a></li>
        <li><a href="dogList.dog">쇼핑몰로 돌아가기</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
<section id = "listForm">

	<section id="content_main">
		<section id = "content_left">
			<img src="images/${dog.image}"/>
		</section>
		<section id = "content_right">
			<b>상품이름 : </b> ${dog.kind}<br>
			<b>가격 : </b> ${dog.price}<br>
			<b>칼로리 : </b> ${dog.height}<br>
			<b>무게 : </b> ${dog.weight}<br>
			<b>원산지 : </b> ${dog.country}<br><br>
			<b>내용 : </b> ${dog.content}<br>
		</section>
		<div style="clear:both"></div>
		<nav id = "commandList">
			<br><br><a href="dogList.dog">상품목록보기</a>
			<a href="dogCartAdd.dog?id=${dog.id}">장바구니에 담기</a>
		</nav>
	</section>
</section>
</div>
</body>
</html>