<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
</head>
<body>
 	<section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                  <c:forEach items="${list }" var="board">
                    <div class="col mb-5">              
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <c:forEach items="${board.fileVoList }" var="file">
                            <img class="card-img-top" src="<c:url value='/download${file.fi_name}'/>" alt="..." height="275" />
                            </c:forEach>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${board.bo_name}</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->                                 
                                    ${board.bo_price}원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="<c:url value='/board/insertUpdate${pm.cri.currentUrl}&bo_num=${board.bo_num}'/>">수정하기</a></div>
                            </div>
                        </div>
                    </div>
                      </c:forEach>
                </div>
            </div>
        </section>
         <ul class="pagination justify-content-center">
  	<c:if test="${pm.prev}">
	    <li class="page-item">
	    	<a class="page-link" href="<c:url value='/board/list${pm.cri.getUrl(pm.startPage-1)}'/>">이전</a>
	    </li>
    </c:if>
    
    <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="i">
	    <li class="page-item <c:if test='${pm.cri.page == i}'>active</c:if>">
	    	<a class="page-link" href="<c:url value='/board/list${pm.cri.getUrl(i)}'/>">${i}</a>
	    </li>
    </c:forEach>
    <c:if test="${pm.next}">
	    <li class="page-item">
	    	<a class="page-link" href="<c:url value='/board/list${pm.cri.getUrl(pm.endPage+1)}'/>">다음</a>
	    </li>
    </c:if>
  </ul>
</body>
</html>