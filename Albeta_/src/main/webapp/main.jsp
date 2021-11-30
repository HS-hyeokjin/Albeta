<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.SW" %>
<%@ page import = "dao.SWRepository" %>
<jsp:useBean id="SWDAO" class="dao.SWRepository" scope="session" />

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript"src="/resources/js/bootstrap.js"></script>
<link rel="stylesheet"href="/resources/css/bootstrap.css">
<head>
<meta charset="UTF-8">
<title>SW 목록</title>
</head>
<body>
	<jsp:include page = "header.jsp" />
	<div class="jumbotron">
		<div class = "container">
			<h1 class="display-3">소프트웨어 목록</h1>
		</div>
	</div>
	<%
		SWRepository dao = SWRepository.getInstance();
		ArrayList<SW> listofSW = dao.getAllSW();
	%>
	<div class ="container">
		<div class="row" align="left">
			<%
				for (int i = 0; i < listofSW.size(); i++){
					SW sw = listofSW.get(i);
					%>
					<div class="col-md-4">
					<img src="./resorces/images/<%=sw.getFilename2() %>" style = "width: 100%">
						<h3>파일명 : <%=sw.getFileName() %></h3>
						<p>용량 : <%=sw.getUnitVolume()  %> MB
						<p>분류 : <%=sw.getClassification() %>
						<p> <a href="./SW.jsp?id=<%=sw.getSWID() %>"
						class="btn btn-sencondary" role="button"> 자세히 &raquo;></a>
						</div>
					</div>
					<% } %>
					</div>
					<hr>
					</div>
<%@ include file="footer.jsp" %>
</body>
</html>