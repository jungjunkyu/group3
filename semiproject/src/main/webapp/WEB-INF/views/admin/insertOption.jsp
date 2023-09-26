<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>옵션 등록</h1>
	<form action="<c:url value='/admin/insertOption'/>" method="post">
		<div class="form-group">
			${product}
			<input type="hidden" class="form-control" name="op_pr_code" value ="${product.pr_code}">
			<div class="form-group">
				<label>색상</label>
				<input type="text" class="form-control" name="op_color">
			</div>
			
			<div class="form-group">
				<label>수량</label>
				<input type="text" class="form-control" name="op_amount">
			</div>
			
			<div class="form-group">
				<label>사이즈</label>
				<input type="text" class="form-control" name="op_size">
			</div>				
			<button class="btn btn-outline-success col-12">등록하기</button>
		</div>
	</form>
</body>
</html>