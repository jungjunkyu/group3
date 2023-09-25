<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#star{
	color : #f7ea00;
}

</style>
</head>
<body>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
           
                    <div class="col-md-6">
                    <c:forEach items="${board.fileVoList }" var="file">
                    <img class="card-img-top mb-5 mb-md-0" src="<c:url value='/download${file.fi_name}'/>" alt="..." />                    
           			</c:forEach>
           			</div>
                    <div class="col-md-6">
                    
                        <h1 class="display-5 fw-bolder">${board.bo_name}</h1>
                        <div class="fs-5 mb-5">
                            <span>가격 : ${board.bo_price }원</span>
                        </div>
                        <p class="lead">${board.bo_contents}</p>
                        <div class="d-flex">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                주문하기
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</body>
</html>