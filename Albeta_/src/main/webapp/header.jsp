<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<scriptsrc="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resource/js/bootstrap.js"></script>
<scripttype="text/javascript"src="/resource/js/bootstrap.js"></script>
<linkrel="stylesheet"href="/resource/css/bootstrap.css">
<jsp:useBean id="SWDAO" class="dao.SWRepository" scope = "session"/>

<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="./Home.jsp">Home</a></li>
  <li role="presentation" class="active"><a href="./main.jsp">소프트웨어 목록</a></li>
  <li role="presentation" class="active"><a href="./addSW.jsp">업로드</a></li>
</ul>