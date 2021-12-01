<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.SW" %>
<%@ page import = "dao.SWRepository" %>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("main.jsp");
		return;
	}
	
	SWRepository dao = SWRepository.getInstance();
	
	SW sw = dao.getSWById(id);
	if(sw == null) {
		response.sendRedirect("exNoSW.jsp");
	}
	
	ArrayList<SW> interestList = dao.getAllSW();
	SW interests = new SW();
	for (int i = 0; i < interestList.size(); i++) {
		interests = interestList.get(i);
		if(interests.getSWID().equals(id)){
			break;
		}
	}
	
	ArrayList<SW> list = (ArrayList<SW>)session.getAttribute("interestlist");
	if(list == null) {
		list = new ArrayList<SW>();
		session.setAttribute("interestlist", list);
	}
	
	int cnt = 0;
	SW interestsQnt = new SW();
	for(int i = 0; i < list.size(); i++) {
		interestsQnt = list.get(i);
		if (interestsQnt.getSWID().equals(id)) {
			cnt++;
			int orderQuantity = interestsQnt.getSwnum()+1;
			interestsQnt.setSwnum(orderQuantity);
		}
	}
	
	if(cnt == 0) {
		interests.setSwnum(1);
		list.add(interests);
	}
	
	response.sendRedirect("SW.jsp?id="+id);
%>