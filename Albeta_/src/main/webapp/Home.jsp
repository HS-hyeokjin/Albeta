<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript"src="/resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.css" />
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<jsp:include page = "header.jsp" />
<div class="page-header">
	<%! String good = "Albeta";
	String tagline = "여러가지 소프트웨어를 테스트해보세요"; %>
		<div class = "text-center">
	<h1> <%= good %></h1>
	<hr>
	<h3> <%= tagline %></h3>
	</div>
</body>
</html>