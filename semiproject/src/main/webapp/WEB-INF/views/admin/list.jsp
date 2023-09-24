<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 등록 페이지</title>
</head>
<body>
<h1>관리자 제품 리스트</h1>
	<table>
		 <thead>
		      <tr>
		        <th>제품코드</th>
		        <th>제품명</th>
		        <th>가격</th>
		      </tr>
	    </thead>
	    <tbody>
		      <c:forEach items="${list}" var="product">
			      <tr>
				        <td>
				        	${product.pr_code}
				        </td>
				        <td>
				        	<a href="<c:url value='/admin/detail?${product.pr_code}'/>">${product.pr_name}
				        </td>
				        <td>
			 	       		${product.pr_price}
			      		</td>
			      </tr>
		      </c:forEach>
	    </tbody>
 	</table>
	<!-- 등록된 제품 테이블로 리스트화 -->


	<!-- 등록 버튼 -->
	<!-- 등록 자바스크립트 -->


</body>
</html>