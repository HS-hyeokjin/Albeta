<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript"src="/resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.css" />
<html>
<head>
<meta charset="UTF-8">
<title>페이지 오류</title>
</head>
<body>
	<jsp:include page = "header.jsp" />
	<div class="page-header">
  		<h1> 페이지를 찾을 수 없습니다.. </h1>
	</div>
	
	<div class = "container">
	<p><=% request.getRequestURL()%></p>
	<p> <a href="SW.jsp" class = "btn btn-secondary"> 목록으로 &raquo;</a>
	</div>
</body>
</html>