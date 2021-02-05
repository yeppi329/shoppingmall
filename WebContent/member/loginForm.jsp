<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>로그인 페이지</title>
<link href="http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css" rel="stylesheet">

<style>
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
.b {
	box-shadow: 5px 5px 5px lightgray;
}	
.center_div{
	padding-top:30px;
	padding-bottom:50px;
	padding-right:30px;
	padding-left:30px;
    margin:auto;
    width:50%; /* value of your choice which suits your alignment */
    border:1px solid lightgray;
    border-radius: 2em;"
}
h2{
	text-align:center;
	font-family:'Jeju Myeongjo', serif;
	font-weight:600;
}
hr{
	height:1px;
	background-color:lightgray;
}
</style>
</head>

<body>
<div class="container">
<form action="../memberLoginAction.me" method="post">

	<h2 >로그인 페이지</h2>
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
        
        <li><a href="dogList.dog">상품 둘러보기</a></li>
        <li class="active"><a href="qna_board_list.jsp">게시판</a></li>
        <li><a href="memberLogin.me">게시판 글쓰기</a></li>
        <li><a href="dogList.dog">쇼핑몰로 돌아가기</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="memberLogin.me"><span class="glyphicon glyphicon-user"></span>로그인</a></li>
      </ul>
    </div>
  </div>
</nav>
<br>
	<div class="center_div" >
	<h2 >로그인</h2>
	 <hr>
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <input type="text" name="MEMBER_ID" id = "MEMBER_ID" placeholder="ID" class="form-control"  value=''/>
    </div>
    <br>
     <div class="input-group">
       <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>  
	<input type="password" name="MEMBER_PW" id = "MEMBER_PW" placeholder="PASSWORD" value='' class="form-control"/>
     </div>
     <br>
     <div class="form-group">
         <a href="javascript:loginform.submit()" class="btn btn-default btn-block m-t-md">로그인</a>
     </div>
      <hr>
     <div class="form-group">
         <a href="../memberJoin.me" class="btn btn-default btn-block m-t-md"> 회원가입</a>
     </div>
     </div>
    </form>
</div>
<!-- 
<section id = "loginformArea">
<form name="loginform" action="../memberLoginAction.me" method="post">
<table>
	<tr>
		<td colspan="2">
			<h1>로그인 페이지</h1>
		</td>
	</tr>
	<tr><td><label for = "MEMBER_ID">아이디 : </label></td><td><input type="text" name="MEMBER_ID" id = "MEMBER_ID"/></td></tr>
	<tr><td><label for = "MEMBER_PW">비밀번호 : </label></td><td><input type="password" name="MEMBER_PW" id = "MEMBER_PW"/></td></tr>
	<tr>
		<td colspan="2">
			<a href="javascript:loginform.submit()">로그인</a>&nbsp;&nbsp;
			<a href="../memberJoin.me">회원가입</a>
		</td>
	</tr>
</table>
</form>   
</section> -->
</body>
</html>