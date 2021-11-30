<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.SW" %>
<%@ page import="dao.SWRepository" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.css" />
<jsp:useBean id="SWDAO" class="dao.SWRepository" scope = "session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SW 상세</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class = "jumbotromn">
		<div class="container">
			<h1 class="display-3"> SW 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		SWRepository dao = SWRepository.getInstance();
		SW sw = dao.getSWById(id); 
		%>
	<div class="container">
		<div class = "row">
		<div class="col-md-5">
		<img src="./resources/images/<%=sw.getFilename2() %>" style = "width: 100%">
		</div>
			<div class="col-md-6">
				<h3><%=sw.getFileName()%>
				<p><%=sw.getDescription()%>
				<p> <b>SW 번호 :</b><span class="badge badge-danger"><%=sw.getSWID()%></span>
				<p> <b>개발자</b> : <%=sw.getDeveloper() %>
				<p> <b>파일 크기</b> : <%=sw.getUnitVolume() %>
				<p> <b>분류</b> : <%=sw.getClassification() %>
				<p> <a href="#" class="btn btn-info"> 다운로드 &raquo;</a>
				<a href="./main.jsp" class="btn btn-secondary"> 목록으로 &raquo;</a>
				</div>
			</div>
			<hr>
			</div>
			<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>