<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>제품 수정</h1>
	<form action="<c:url value='/admin/update'/>" method="post">
		<div class="form-group">
					
			<div class="form-group">
				<label>제품명</label>
				<input type="text" class="form-control" name="pr_name">
			</div>
			
			<div class="form-group">
				<label>상세설명</label>
				<input type="text" class="form-control" name="pr_detail">
			</div>			
			<button class="btn btn-outline-success col-12">등록하기</button>
		</div>
	</form>
</body>
</html>