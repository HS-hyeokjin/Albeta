<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.SW" %>
<%@ page import="dao.SWRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String swId = request.getParameter("SWId");
		String filename = request.getParameter("fileName");
		String unitVolume = request.getParameter("unitVolume");
		String description = request.getParameter("description");
		String developer = request.getParameter("developer");
		String classification = request.getParameter("Classification");
		
		
		SWRepository dao = SWRepository.getInstance();
		
		SW newSW = new SW();
		newSW.setSWID(swId);
		newSW.setFileName(filename);
		newSW.setUnitVolume(unitVolume);
		newSW.setDescription(description);
		newSW.setDeveloper(developer);
		newSW.setClassification(classification);
		
		dao.addSW(newSW);
		
		response.sendRedirect("main.jsp");
	%>
</body>
</html>