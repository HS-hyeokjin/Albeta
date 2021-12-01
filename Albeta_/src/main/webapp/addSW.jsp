<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript"src="/resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.css" />
<html>
<head>
<meta charset="UTF-8">
<title>소프트웨어 업로드</title>
<style>
.inputRow {
	margin: 15px 0px;
	display: flex;
	align-items : center;
}

.inputRow label {
	width : 150px;
}

.inputRow input, .inputRow textarea {
	font-size: 1.3rem;
}
.inputRow input.btn {
	font-size: 1rem;
	padding : 5px 15px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />

	<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
	<div class="main">
		<div class="banner">
			<div class="container">
				<h1>소프트웨어 업로드</h1>
			</div>
		</div>

		<div class="content">
			<div class="container">
			<form name="newSW" action="./processAddSW.jsp"
					class="form-horizontal" method="post" enctype="multipart/form-data">
				<form name="newSW" action="./processAddSW.jsp"
					class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="inputRow">
						<label for="SWId">소프트웨어 id</label> <input type="text"
							name="SWId" id="SWId">
					</div>
					<div class="inputRow">
						<label for="FileName">소프트웨어 이름</label> <input type="text" name="FileName" id ="FileName">
					</div>
					<div class="inputRow">
						<label for="unitVolume">용량</label> <input type="text" name="unitVolume" id="unitolume">
					</div>
					<div class="inputRow">
						<label for="description">상세 정보</label>
						<textarea name="description" cols="50" rows="2" id="description">
							</textarea>
					</div>
					<div class="inputRow">
						<label for="developer">제작자</label> <input type="text" name="developer" id="developer">
					</div>
					</div>
					<div class="inputRow">
						<label>분류</label> 
						<label><input type="radio" name="Classification" value="게임"> 게임</label> 
						<label><input type="radio" name="Classification" value="유틸"> 유틸</label>
						<label><input type="radio" name="Classification" value="기타"> 기타</label>
					</div>
					
					<div class="form-group row">
						<label class="col-sm-2"> 이미지</label>
					<div class="inputRow">
						<input type="submit" value="등록" class="btn btn-secondary">
						<input type="file" name="swImage" id="swImage">
					</div>
					</div>
				</form>
				<hr>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>