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
	<h1>제품 상세정보</h1>
	${product}
	<a href="<c:url value='/product/update?pr_code=${product.pr_code}'/>" class="btn btn-outline-warning">수정</a>
	<a href="<c:url value='/product/delete?pr_code=${product.pr_code}'/>" class="btn btn-outline-danger">삭제</a>
	
	<!-- 수정 버튼 -->
	<!-- 등록 자바스크립트 -->
	<!-- 삭제 버튼 -->
	<!-- 등록 자바스크립트 -->
</body>
</html>