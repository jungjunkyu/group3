<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
</head>
<body>
	<h1>제품수정</h1>
	<form action="<c:url value='/board/insertUpdate'/>" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label>제품 이름</label>
			<input type ="hidden" name ="bo_num" value ="${board.bo_num}">
			<input type="text" class="form-control" name="bo_name" value="${board.bo_name}">
		</div>
		<div class="form-group">
			<label>제품 가격</label>
			<input type="text" class="form-control" name="bo_price" value="${board.bo_price}">
		</div>
		<div class="form-group">
			<label>첨부파일</label>
			<input type="file" class="form-control" name="files2">
		</div>
		<div class="form-group">
			<label>제품설명</label>
			<textarea class="form-control" name="bo_contents">${board.bo_contents}</textarea>
		</div>
		<button class="btn btn-outline-primary col-12">등록하기</button>
	</form>
</body>
</html>