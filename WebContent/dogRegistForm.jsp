<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   #registForm{
      width: 500px;
      height: 600px;
      border : 1px solid lightgray; 
      margin:auto; 
   }   
   h2{
      text-align: center;
   }
   table{
      margin:auto;
      width: 450px;
      }
   .td_left{
      width: 150px;
      background:lightgray;
   }
   .td_right{
      width: 300px;
      background:skyblue;
   }
   #commandCell{
      text-align: center;
      
   }
</style>
</head>
<body>
<section id = "registForm">
   <header>
      <h2>상품정보등록</h2>
   </header>
      <form action="dogRegist.dog" method="post" name = "writeForm" enctype="multipart/form-data">
      
   <table>
   <tr>
      <td colspan="2">
         <a href="dogList.dog">목록보기</a>
      </td>
    
   </tr>
   
   <tr>
      <td class = "td_left">
         <label for = "kind">상품 이름 : </label>
      </td>
      <td class = "td_right">
         <input type = "text" name = "kind" id ="kind" required="required"/>
      </td>
   </tr>
   
   <tr>
      <td class = "td_left">
         <label for = "nation">브랜드 : </label>
      </td>
      <td class = "td_right">
         <input type = "text" name = "nation" id ="nation"/>
      </td>
   </tr>
   
   <tr>
      <td class = "td_left">
         <label for = "price">가격 : </label>
      </td>
      <td class = "td_right">
         <input type = "text" name = "price" id ="price"/>
      </td>
   </tr>
   <tr>
      <td class = "td_left">
         <label for = "height">칼로리 : </label>
      </td>
      <td class = "td_right">
         <input type = "text" name = "height" id ="height"/>
      </td>
   </tr>
   <tr>
      <td class = "td_left">
         <label for = "weight">무게 : </label>
      </td>
      <td class = "td_right">
         <input type = "text" name = "weight" id ="weight"/>
      </td>
   </tr>
   
   <tr>
      <td class = "td_left">
         <label for = "content">글내용 : </label>
      </td>
      <td class = "td_right">
         <textarea name="content" id="content" rows="13" cols="40" wrap="off"></textarea>
      </td>
   </tr>
   <tr>
      <td class = "td_left">
         <label for = "image">상품이미지 : </label>
      </td>
      <td class = "td_right">
         <input type = "file" name = "image" id ="image"/>
      </td>
   </tr>
   <tr>
      <td colspan="2" id = "commandCell"> 
         <input type = "submit" value = "상품등록"/>      
         <input type = "reset" value = "다시작성"/>      
         <input type = "button" value = "상품목록보기" onClick="window.location.href='dogList.dog'"/>      
      </td>
   </tr>   
   </table>
   </form>
   
</section>
</body>
</html>