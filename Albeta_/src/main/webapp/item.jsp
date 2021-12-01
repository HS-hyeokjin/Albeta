<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.SW" %>
<%@ page import="dao.SWRepository" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript"src="/resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String itemId = session.getId();
%>
<title>장바구니</title>

</head>
<body>
	<jsp:include page="header.jsp" />
	
	<div class="main">
		<div class="banner">
			<div class="container">
				<h1>관심목록</h1>
			</div>
		</div>

		<div class="content">
			<div class="container">
				<div class="row">
					<table width="100%">
						<tr class="btn-group">
							<td align="left"><a href="./deleteCart.jsp?cartId=<%=itemId %>" class="btn btn-danger" >삭제하기</a></td>
							<td align="right"><a href="#" class="btn btn-success" >다운로드</a></td>
						</tr>
					</table>
				</div>
				
				<div style="padding-top: 50px">
					<table class="product-table">
						<tr>
							<th>상품</th>
							<th>가격</th>
							<th>수량</th>
							<th>소계</th>
							<th>비고</th>
						</tr>
						<%
							int sum = 0;
							ArrayList<SW> itemList = (ArrayList<SW>)session.getAttribute("itemlist");
							if(itemList == null)
								itemList = new ArrayList<SW>();
							for(int i = 0; i < itemList.size(); i++) { // 상품 리스트 하나씩 출력하기
								SW sw = itemList.get(i);
						%>
						<tr>
							<td><%=sw.getSWID() %> - <%=sw.getFileName() %></td>
							<td><%=sw.getUnitVolume() %></td>
							<td><%=sw.getSwnum() %></td>
							<td><a href="./removeCart.jsp?id=<%=sw.getSWID() %>" class="btn">삭제</a></td>
						</tr>
						<%
							}
						%>
						<tr>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</table>
				</div>
				<div class="btn-group">
						<a href="./main.jsp" class="btn">&laquo; 목록으로</a>
					</div>
				<hr>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>