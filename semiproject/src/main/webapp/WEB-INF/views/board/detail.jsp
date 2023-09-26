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
                            <button class="btn btn-outline-dark btn btn-order flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                주문하기
                            </button>
                            <button class="btn btn-outline-dark btn-review-insert flex-shrink-0" type="button">
                                <i class="bi-star-fill me-1"></i>
                                리뷰작성
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        
         <script type="text/javascript">
      //결제  버튼을 클릭했을 때 결제페이지로 이동  
		$('.btn-order').click(function(){
			if('${user.me_id}' == ''){
				//alert('로그인한 회원만 이용이 가능합니다.')
				if(confirm('로그인 화면으로 이동하시겠습니까?')){
					location.href = '<c:url value="/member/login"/>'
				}
				return;
			}
			location.href = '<c:url value="/shop/order"/>'
			
		})
		
		$('.btn-review-insert').click(()=>{
		
		//리뷰 로그인 확인
		if('${user.me_id}' == ''){
			if(confirm('리뷰를 작성하려면 로그인 해야합니다. 로그인을 하겠습니까?')){
				location.href = '<c:url value="/member/login"/>';
			}
			return;
		}
		location.href = '<c:url value="/review/insert"/>'
		})
        </script>
        
       
</body>
</html>