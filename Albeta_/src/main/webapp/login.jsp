<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript"src="/resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<html>
<head>
	<jsp:include page = "header.jsp" />
<div class="page-header">
  <h1>로그인</h1>
</div>
<meta charset="UTF-8">
<title>login</title>
</head>
	<div class="container" align="center">
		<div class="row">
			<!-- 입력폼 그리드 -->
			<% String error = request.getParameter("error");
			if( error != null) {
				out.println("<div class='alert alert-danger'>");
				out.println("아이디와 비밀번호를 확인해주세요");
				out.println("</div>");
			}
				%>	
			<div class="col-lg-4">
				<form class="form-signin" action="j_security_check" method="post">
					<!-- ID입력 -->
					<div class="input-group mt-3 mb-1">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">ID</span>
						</div>
						<input type="text" name="j_username" required autofocus class="form-control"
							placeholder="Input ID" aria-label="Input ID"
							aria-describedby="basic-addon1" required>
					</div>
					<!-- PW입력 -->
					<div class="input-group mb-2">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">PW</span>
						</div>
						<input type="password" name="j_password" class="form-control"
							placeholder="Input Password" aria-label="Input Password"
							aria-describedby="basic-addon1" required>
					</div>
					<!-- 로그인 버튼 -->
					<hr>
					<button type="submit" class="btn btn-dark btn-sm btn-block">
						로그인</button>
				</form>
				
			<!-- 그림 넣을 그리드 -->
			<div class="col-lg-8"></div>
		</div>
	</div>