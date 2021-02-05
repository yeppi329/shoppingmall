<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>회원가입 페이지</title>
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
.center_div{
	padding-top:30px;
	padding-bottom:50px;
	padding-right:30px;
	padding-left:30px;
    margin:auto;
    width:50%; 
    border:1px solid lightgray;
    border-radius: 2em;"
}

.b {
	box-shadow: 5px 5px 5px lightgray;
}
h2{
	text-align:center;
	font-family:'Jeju Myeongjo', serif;
	font-weight:600;
}
  body {
    position: relative;
  }
.mydiv{
	margin-top:30px;
	margin-bottom:50px;
	margin-right:30px;
	margin-left:30px;
    width:50%; 
    height:200px;
    border:1px solid lightgray;
    border-radius: 2em;"
	height:30px;
	width:50%;
	overflow:scroll;
	margin:0px auto;
}
hr{
	height:1px;
	background-color:lightgray;
	width:50%;
}
</style>
</head>
<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">
<div class="container">
<form class="form-horizontal" name="joinform" action="./memberJoinAction.me" method="post">

	<h2>회원가입 페이지</h2>

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
  <div class="form-group ">
    <label class="control-label col-sm-2" for="MEMBER_ID">아이디 :</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="MEMBER_ID" name="MEMBER_ID" placeholder="Enter ID">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="MEMBER_PW">비밀번호 : </label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="MEMBER_PW" name="MEMBER_PW" placeholder="Enter password">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="MEMBER_NAME">이름 : </label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="MEMBER_NAME" name="MEMBER_NAME" placeholder="Enter name">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="MEMBER_AGE">나이 : </label>
    <div class="col-sm-10">
      <input type="text" class="form-control" maxlength="2" id="MEMBER_AGE" name="MEMBER_AGE" placeholder="Enter age">
    </div>
  </div>
  
  <div class="custom-control custom-radio" align="center">
  
	<input type="radio" name="MEMBER_GENDER" id="MEMBER_GENDER" class="custom-control-input">
	<label class="custom-control-label" for="MEMBER_GENDER">남</label>
	<input type="radio" name="MEMBER_GENDER" id="MEMBER_GENDER" class="custom-control-input">
	<label class="custom-control-label" for="MEMBER_GENDER">여</label>
</div>

     <div class="form-group">
    <label class="control-label col-sm-2" for="MEMBER_EMAIL">이메일 : </label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="MEMBER_EMAIL" name="MEMBER_EMAIL" placeholder="Enter E-mail">
    </div>
  </div>   
      <br>
     <div class="form-group" align="center">
     <button type="button" class="btn btn-default" onclick="location.href='javascript:joinform.submit()'">회원가입</button>
      <button type="button" class="btn btn-default" onclick="location.href='javascript:joinform.reset()'">다시작성</button>
         </div>
         </form>
</div>
<hr>
   <div class="mydiv" id="mydiv">
	<h4 style="text-align:center;">개인정보처리방침</h4>
 <p> 본 사이트는 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.
본 사이트는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
<br>
1. 개인정보의 처리 목적<br>
본 사이트은 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.
<br>
가. 홈페이지 회원가입 및 관리
<br>
회원 가입의사 확인, 서비스 부정이용 방지, 만14세 미만 아동 개인정보 수집 시 법정대리인 동의 여부 확인, 각종 고지·통지 등을 목적으로 개인정보를 처리합니다.
<br>
나. 민원사무 처리
<br>
민원사항 확인, 사실조사를 위한 연락·통지 등을 목적으로 개인정보를 처리합니다.
<br>
다. 재화 또는 서비스 제공
<br>
서비스 제공, 콘텐츠 제공 등을 목적으로 개인정보를 처리합니다.
<br>
라. 마케팅 및 광고에의 활용
<br>
서비스의 유효성 확인, 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.
<br>
</p>
</div>

<!-- 
<section id = "joinformArea">
<form name="joinform" action="./memberJoinAction.me" method="post">
<table>
	<tr>
		<td colspan="2">
			<h1>회원가입 페이지</h1>
		</td>
	</tr>
	<tr>
		<td><label for = "MEMBER_ID">아이디 : </label> </td>
		<td><input type="text" name="MEMBER_ID" id = "MEMBER_ID"/></td>
	</tr>
	<tr>
		<td><label for = "MEMBER_PW">비밀번호 : </label></td>
		<td><input type="password" name="MEMBER_PW" id = "MEMBER_PW"/></td>
	</tr>
	<tr>
		<td><label for = "MEMBER_NAME">이름 : </label></td>
		<td><input type="text" name="MEMBER_NAME" id = "MEMBER_NAME"/></td>
	</tr>
	<tr>
		<td><label for = "MEMBER_AGE">나이 : </label></td>
		<td><input type="text" name="MEMBER_AGE" maxlength="2" id = "MEMBER_AGE"/></td>
	</tr>
	<tr>
		<td><label for = "MEMBER_GENDER">성별 : </label></td>
		<td>
			<input type="radio" name="MEMBER_GENDER" value="남" checked="checked" id = "MEMBER_GENDER"/>남자
			<input type="radio" name="MEMBER_GENDER" value="여"/>여자
		</td>
	</tr>
	<tr>
		<td><label for = "MEMBER_EMAIL">이메일 주소 : </label></td>
		<td><input type="text" name="MEMBER_EMAIL" id = "MEMBER_EMAIL"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="javascript:joinform.submit()">회원가입</a>&nbsp;&nbsp;
			<a href="javascript:joinform.reset()">다시작성</a>
		</td>
	</tr>
</table>
</form>
</section>  -->
</body>
</html>