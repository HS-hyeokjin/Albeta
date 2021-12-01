<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.SW" %>
<%@ page import="dao.SWRepository" %>
<%@ page import = "com.oreilly.servlet.*" %>
<%@ page import = "com.oreilly.servlet.multipart.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
	String filename2 = "";
	String realFolder = "C:/Albetaupload"; // 웹 애플리케이션상의 절대 경로
	int maxSize = 5*1024*1024; // 최대 업로드될 파일의 크기 5MB
	String encType = "utf-8"; // 인코딩 유형
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, 
			maxSize, encType, new DefaultFileRenamePolicy());
	
	
		String swId = multi.getParameter("SWId");
		String filename = multi.getParameter("fileName");
		String unitVolume = multi.getParameter("unitVolume");
		String description = multi.getParameter("description");
		String developer = multi.getParameter("developer");
		String classification = multi.getParameter("Classification");
		
		Enumeration files = multi.getFileNames();
		String fname = (String) files.nextElement();
		String fileName2 = multi.getFilesystemName(fname);
		
		SWRepository dao = SWRepository.getInstance();
		
		SW newSW = new SW();
		newSW.setSWID(swId);
		newSW.setFileName(filename);
		newSW.setUnitVolume(unitVolume);
		newSW.setDescription(description);
		newSW.setDeveloper(developer);
		newSW.setClassification(classification);
		newSW.setFilename2(fileName2);		
	
		
		
		dao.addSW(newSW);
		
		response.sendRedirect("main.jsp");
	%>
</body>
</html>