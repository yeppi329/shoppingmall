<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "board.vo.PageInfo" %>
<%@ page import = "board.vo.BoardBean" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<%
	ArrayList<BoardBean> articleList=(ArrayList<BoardBean>)request.getAttribute("articleList");
	PageInfo pageInfo=(PageInfo)request.getAttribute("pageInfo");
	int listCount = pageInfo.getListCount();
	int nowPage=pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>MVC 게시판</title>
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css" rel="stylesheet">
<style type = "text/css">
.hn{font-family: 'Hanna', sans-serif;}
.jm{font-family: 'Jeju Myeongjo', serif;}
#registForm{
	width: 700px;
	height:600px;
	border :1px solid lightgray;
	margin :auto;
}
h2{
	text-align:center;
	font-weight: 600;
}
hr{
	width:auto;
	border:1px solid lightgray;
	
}

#tr_top{
	
	background:#E80000;
	color:#FFFFFF;
	text-align:center;
}
#pageList{

	margin:auto;
	width:500px;
	text-align:center;
}
#emptyArea{
	margin:auto;
	width:500px;
	text-align:center;
}
.b {
	box-shadow: 5px 5px 5px lightgray;
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
<div class="container">
	<h2  class="jm"  >글 목록 </h2>
			
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
<table class="table table-hover">
			<% 
if(articleList != null && listCount > 0){
%>
			<tr id="tr_top">
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>날짜</td>
				<td>조회수</td>
			</tr>
			
			<%
		for(int i=0;i<articleList.size();i++){
	%>	
			<tr>
				<td align="center"><%=articleList.get(i).getBOARD_NUM() %></td>
				<td>
					<%if(articleList.get(i).getBOARD_RE_LEV()!=0){ %> 
						<%for(int a=0;a<=articleList.get(i).getBOARD_RE_LEV()*2;a++){ %>
							&nbsp;<%} %> └ <%}else{ %>   <%} %> 
					<a href="boardDetail.bo?board_num=<%=articleList.get(i).getBOARD_NUM()%>&page=<%=nowPage%>">
						<%=articleList.get(i).getBOARD_SUBJECT()%>
				</a>
				</td>
				
				<td align="center"><%=articleList.get(i).getBOARD_NAME()%></td>
				<td align="center"><%=articleList.get(i).getBOARD_DATE()%></td>
				<td align="center"><%=articleList.get(i).getBOARD_READCOUNT()%></td>
			</tr>
			<%} %>
		</table>
<!-- </section> -->	
</div>
	
<div class="container" align="center" >
	<br>
	 <%if(nowPage<=1){ %>[이전]&nbsp;
	 <%}else{ %>
	 <a href="boardList.bo?page=<%=nowPage-1 %>">[이전]</a>&nbsp;
	 <%} %>
	 <%for(int a=startPage;a<=endPage;a++){
		if(a==nowPage){%>
		[<%=a %>]
		<%}else {%>
		<a href="boardList.bo?page=<%=a %>">[<%=a %>]
		</a>&nbsp;
		<%} %>
		<%} %>
		
		<%if(nowPage>=maxPage){%>
		[다음]
		<%}else{ %>
		<a href="boardList.bo?page=<%=nowPage+1 %>">[다음]</a>
		<%} %>
		
</div>
	<%
	}
	else
	{
	%>
	<section id="emptyArea">등록된 글이 없습니다.</section>	
	<%
	}
	%>

</body>
</html>