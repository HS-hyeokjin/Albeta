<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript"src="/resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.css" />
<head>
<meta charset="UTF-8">
<title>오류</title>
</head>
<body>
	<jsp:include page = "header.jsp" />
	<div class="page-header">
  		<h1> 해당 소프트웨어에 오류가 있습니다. </h1>
	</div>
	
	<div class = "container">
	<p><%=request.getRequestURL()%>?<%=request.getQueryString() %>
	<p><a href="main.jsp" class="btn btn-secondary"> 목록으로
	</a>
	</div>
</body>
</html>