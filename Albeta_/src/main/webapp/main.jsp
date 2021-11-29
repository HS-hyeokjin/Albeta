<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.SW" %>
<jsp:useBean id="SWDAO" class="dao.SWRepository" scope="session" />

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<scriptsrc="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resource/js/bootstrap.js"></script>
<scripttype="text/javascript"src="/resource/js/bootstrap.js"></script>
<linkrel="stylesheet"href="/resource/css/bootstrap.css">
<head>
<meta charset="UTF-8">
<title>SW 목록</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<div class="jumbotron">
		<div class = "container">
			<h1 class="display-3">소프트웨어 목록</h1>
		</div>
	</div>
	<%
		ArrayList<SW> listofSW = SWDAO.getAllSW();
	%>
	<div class ="container">
		<div class="row" align="left">
			<%
				for (int i = 0; i < listofSW.size(); i++){
					SW sw = listofSW.get(i);
					%>
					<div class="col-md-4">
						<h3>파일명 : <%=sw.getFileName() %></h3>
						<p>용량 : <%=sw.getVolume()  %> MB
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