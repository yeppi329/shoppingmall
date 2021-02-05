<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "board.vo.BoardBean" %>
<%
	BoardBean article=(BoardBean)request.getAttribute("article");
	String nowPage = (String)request.getAttribute("page");
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
<style type="text/css">
#articleForm{
	width:500px;
	height:500px;
	border:1px solid lightgray;
	margin:auto;
}
h2{
    padding: 30px 0px;

	text-align:center;
}
#basicInfoArea{
	border:1px solid lightgray;
	height:50px;
	text-align:center;
}
#articleContentArea{

	margin-top:20px;
	height:350px;
	text-align:center;
	background:lightgray;
	overflow:auto;
}
#commandList{
	margin:auto;
	width:500px;
	text-align: center;
}
danger{
	background-color:@brand-danger;
}

</style>
</head>

<body>

<div class="row">
    <div class="col-xs-2 col-md-2"></div>
    <div class="col-xs-8 col-md-8">
    <h2 class="text-center">게시글 보기</h2><p>&nbsp;</p>
    <div class="table table-responsive">
        <table class="table">
        <tr>
            <th class="danger">글번호</th>
            <td><%=article.getBOARD_NUM() %></td>
            <th class="danger">조회수</th>
            <td><%=article.getBOARD_READCOUNT()%></td>
        </tr>
           
         
        <tr>
            <th class="danger">작성자</th>
            <td><%=article.getBOARD_NAME()%></td>
            <th class="danger">작성일</th>
            <td><%=article.getBOARD_DATE()%></td>
        </tr>
         
        <tr>
            <th class="danger">첨부파일</th>
            <td colspan="3"><%=article.getBOARD_FILE() %></td>
        </tr>
         
        <tr>
            <th class="danger">제목</th>
            <td colspan="3"><%=article.getBOARD_SUBJECT() %></td>
        </tr>
         
        <tr>
            <th class="danger">글 내용</th>
            <td colspan="3" height="200px" ><%=article.getBOARD_CONTENT() %></td>
        </tr>
         
        <tr>
            <td colspan="4" class="text-center">
              <a href="boardReplyForm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage %>">[답변]</a>
				<a href="boardModifyForm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage %>">[수정]</a>
				<a href="boardDeleteForm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage %>">[삭제]</a>
				<a href="boardList.bo?page=<%=nowPage %>">[목록]</a>&nbsp;&nbsp;</td>
        </tr>
        </table>
    </div>
     
    </div>
</div>


<!-- 게시판 수정
<section id="articleForm">
	<h2>글 내용 상세보기</h2>
	<section id="basicInfoArea">
		제 목 :
		<%=article.getBOARD_SUBJECT() %>
		첨부파일 :
		<% if(!(article.getBOARD_FILE()==null)){ %>
		<a href="file_down?downFile=<%=article.getBOARD_FILE() %>"><%=article.getBOARD_FILE() %></a>
		<%} %>
	</section>
	<section id="articleContentArea">
		<%=article.getBOARD_CONTENT() %>
	</section>	
</section>
<section id="commandList">
	<a href="boardReplyForm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage %>">[답변]</a>
	<a href="boardModifyForm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage %>">[수정]</a>
	<a href="boardDeleteForm.bo?board_num=<%=article.getBOARD_NUM() %>&page=<%=nowPage %>">[삭제]</a>
	<a href="boardList.bo?page=<%=nowPage %>">[목록]</a>&nbsp;&nbsp;
</section>
 -->
</body>
</html>