<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board2 예제 글쓰기 폼</title>

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  
<script type="text/javascript">

function switchCheck(){
	
	
}

function writeFormCheck() {
	
	if($trim($("#writer").val()) == null || $trim($("#writer").val()) == ""){
	    alert("글쓴이 입력해 주세요!");
	    $("#writer").focus();
	    return false;
  	}
	if($("#subject").val() == null || $("#subject").val() == ""){
        alert("글제목 입력해 주세요!");
        $("#subject").focus();
        return false;
    }
	if($("#content").val() == null || $("#content").val() == ""){
        alert("글내용을  입력해 주세요!");
        $("#content").focus();
        return false;
      }		
      return true;
}//writeFormCheck() end





</script>
<style type="text/css">
  table{
  line-height: 40px; padding: 5px; border-spacing: 0px;
  margin: auto; background-color: orange;
  }
</style>
</head>
<body>
	<h2 align="center">게시판 글쓰기폼</h2>
	<a href="list.do">리스트</a>
    <form name="writeForm" method="post">	
 	<table>
 	
 		<tr>
          <td>글쓴이</td>
          <td><input type="text" id="writer" name="writer" size="10" /> </td>
        </tr>
 		<tr>
          <td>글제목</td>
          <td><input type="text" id="subject" name="subject" size="30" value="${boardDto.subject }"/> </td>
        </tr>
        
        <tr>
          <td>이메일</td>
          <td><input type="text" id="email" name="email" size="30"/> </td>
        </tr>
        <tr>
          <td>글내용</td>
          <td> <textArea name="content" id="content" rows="13" cols="40" >${boardDto.content }</textArea> </td>
        </tr>
 		<tr>
          <td>암호</td>
          <td><input type="password" id="password" name="password" size="10"/> </td>
        </tr>
        
        <tr>
          <td colspan="2" align="center">
            <input type="button" value="글등록" onclick="writeFormCheck()">
            <input type="reset" value="입력한내용취소">
            <input type="hidden" name="switch" value="${boardDto.content }">
            
          </td>
        </tr>
 		
 	</table>	
    </form>
</body>
</html>