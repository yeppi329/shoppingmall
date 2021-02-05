<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>예림의 편의점</title>
<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet">
<style type = "text/css">
.hn{font-family: 'Hanna', sans-serif;}
.bg {
  background-color:rgba(0,0,0,0.5);
  width:100%;
  height:800px;
  position:absolute;
  top:60px;

}
section{
  background-size: cover;
  display:block;
  width:70%;
  color:#ffffff;
  text-align:center;
  padding-top:100px;
  margin:auto;
}
section h1{
font-size:5em;

}
section p{
margin-bottom:30px;
font-size:2em;

}
section h1,p,a{
position:relative;
z-index:1000;
}
.s3 { text-shadow: 2px 2px 6px greenyellow; }
a:link {
  color: white;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: white;
  background-color: transparent;
  text-decoration: none;
}

a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}

</style>
</head>
<body>

<section>

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>

    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
     	 <a href="dogList.dog" target="_blank">
        	<img src="images/beverages-3105631_1280.jpg" style="opacity:0.9" alt="Los Angeles" style="width:100%;">
      	</a>
      </div>
		
      <div class="item">
      	<a href="boardList.bo?page=1" target="_blank">
       		<img src="images/friendship-2366955_1280.jpg" alt="Chicago" style="width:100%;">
      	</a>
      </div>
	</div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

</section>


<section>
<!-- <div class="bg" ></div> -->	

</section> 

<!-- <h2><a href="dogList.dog">편의점 입장</a></h2> -->
</body>
</html>