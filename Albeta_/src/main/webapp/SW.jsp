<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.SW" %>
<%@ page import="dao.SWRepository" %>
<%@ page errorPage = "exceptionNoProductId.jsp" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.css" />

<jsp:useBean id="SWDAO" class="dao.SWRepository" scope = "session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SW 정보</title>
<script type="text/javascript">
	funtion addInterest() {
		if(confirm("해당 소프트웨어를 관심목록에 추가하시겠습니까?")){
			document.addForm.submit();
		}
		else{
			document.addForm.reset();
			}
	}
	</script>

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
		<img src="c:/Albetaupload/<%=sw.getFilename2() %>" style = "width: 100%" >
		</div>
			<div class="col-md-6">
				<h3><%=sw.getFileName()%></h3><hr>
				<p><form name="addForm" action="./addInterest.jsp?id=<%=sw.getSWID() %>" method="post"></form>
				<p> <b>SW 번호 :</b><span class="badge badge-danger"><%=sw.getSWID()%></span><hr>
				<p> <b>개발자</b> : <%=sw.getDeveloper() %><hr>
				<p> <b>파일 크기</b> : <%=sw.getUnitVolume() %><hr>
				<p> <b>분류</b> : <%=sw.getClassification() %><hr>
				<p> <b>설명</b> : <%=sw.getDescription()%><hr>
				<p> <a href="#" class="btn btn-info"> 다운로드 &raquo;</a>
				<a href="./main.jsp" class="btn btn-secondary"> 목록으로 &raquo;</a>
				<a href="./interest.jsp" class="btn btn-secondary"> 관심등록 &raquo;</a>
				</div>
			</div>
			<hr>
			</div>
			<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>