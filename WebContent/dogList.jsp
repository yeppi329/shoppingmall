<%@page import="java.util.HashMap"%>
<%@page import="vo.Dog"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css" rel="stylesheet">
<style type="text/css">
.b {
	box-shadow: 5px 5px 5px lightgray;
}
p{
	font-family:'Jeju Myeongjo', serif;
	font-weight:600;
}

body{
	background-color:white;
}
#listForm{
	width:700px;
	height:1000px;
	margin:auto;
}
h2{
	font-family: 'Jeju Myeongjo', serif;
	text-align:center;
	font-weight: 600;
}

table{

	width:700px;
	background-color:white;
	border:1px solid lightgray;

}

.div_empty{
	background-color:white;
	width: 100%;
	height: 100%;
	text-align: center;
}

#todayImageList{
	text-align: center;
}
#productImage{
	width: 150px;
	height: 150px;
	border: none;
}
#todayImage{
	width: 70px;
	height: 70px;
	border: none;
}
#stv2 {
	z-index:1001;      
	float:left;
	width:100px;
	position: fixed; /*최상단으로 나오게 - 스크롤에 따라 위아래로 이동*/
	margin:70px;
	background-color:white;
	border:1px solid lightgray;
	 
       }
#stv2_list {
	position:fixed;
	left: 95px;/*오늘본 상품 왼쪽으로 빼기*/
    width:100px;
	border:1px solid lightgray;
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
<body>
<c:if test="${todayImageList !=null }">
<!-- <div id ="todayImageList"> -->
	<aside id="stv2">
		<div class= "stv2_list b" align="center">
			
			<p>오늘 본 상품</p>
				<c:forEach items="${todayImageList}" var="todayImage" varStatus="status">
					<c:if test="${(status.index+1) <=4 }"   >
						<img src="images/${todayImage}" id="todayImage"/>
						<c:if test="${((status.index+1) mod 4) ==0}"></c:if>
					</c:if>
				</c:forEach>
		</div>
	</aside>
</c:if>
<div class="container">
<c:if test="${dogList != null}">
<br>
<h2>상품 목록</h2><br>
<nav class="navbar navbar-inverse b">
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
        <li><a href="dogCartList.dog"><span class="glyphicon glyphicon-shopping-cart"></span> 장바구니</a></li>
        <li><a href="dogRegistForm.dog"><span class="glyphicon glyphicon-cog"></span> 관리자 기능</a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- <section id = "listForm">  -->

<!-- <h3><a href="dogRegistForm.dog">[상품 등록]</a></h3> -->
<!-- <h3><a href="memberLogin.me">[로그인|회원가입]</a></h3> -->
<!-- <h3><a href="boardList.bo">[커뮤니티]</a></h3> -->
  <div class="row">
  <c:forEach var = "dog" items="${dogList}" varStatus="status">
    <div class="col-xs-6 col-md-3">
      <div class="thumbnail b">
		<td>
			<a href="dogView.dog?id=${dog.id}">
			<img src="images/${dog.image}" id="productImage" alt="..."/>
				<div class="caption">
					상품명:${dog.kind}<br>	
					가격:${dog.price}<br>	
					상품설명:${dog.content}<br>
				</div>
			</a>
		</td>
		<c:if test="${((status.index+1) mod 4) ==0 }"></c:if>
		</div>
    </div>
   </c:forEach> 
   </div>  
</c:if>

<c:if test="${dogList==null }">
	<div class="div_empty">
	구매불가
	</div>
</c:if>
<!-- </section>  -->
</div>

</body>
</html>