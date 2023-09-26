<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8" %>
 <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="<c:url value='/'/>">쇼핑몰</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    	<li class="nav-item">
		  					<a class="nav-link" href="<c:url value='/board/list'/>">제품</a>
						</li>
                         <c:if test="${user == null}">
                      	<li class="nav-item">
		  					<a class="nav-link" href="<c:url value='/member/signup'/>">회원가입</a>
						</li>	
                      	<li class="nav-item">
		  					<a class="nav-link" href="<c:url value='/member/login'/>">로그인</a>
						</li>
						 </c:if>
						 <c:if test="${user != null }">
						    <li class="nav-item">
						      <a class="nav-link" href="<c:url value='/member/logout'/>">로그아웃</a>
						  </c:if>
						    </li>
						  <li class="nav-item">
		  					<a class="nav-link btn-mypage">마이페이지</a>
						</li>
						  
						<c:if test="${user != null && user.me_role == 'ADMIN' }">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">관리자 기능</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="<c:url value='/board/insert'/>">제품 등록</a></li>
                              </ul>
                        </li>
                        </c:if>
                    </ul>
                    
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
	  <script type="text/javascript">
      //결제  버튼을 클릭했을 때 결제페이지로 이동  
		$('.btn-mypage').click(function(){
			if('${user.me_id}' == ''){
				//alert('로그인한 회원만 이용이 가능합니다.')
				if(confirm('로그인 화면으로 이동하시겠습니까?')){
					location.href = '<c:url value="/member/login"/>'
				}
				return;
			}
			location.href = '<c:url value='/member/mypage'/>'
		})
        </script>  
