<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>주문/결제창</title>
</head>
<body class="d-flex flex-column min-vh-100">
	

 <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/spring/">쇼핑몰</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                       
                      	<li class="nav-item">
		  					<a class="nav-link" href="/spring/member/signup">회원가입</a>
						</li>	
                      	<li class="nav-item">
		  					<a class="nav-link" href="/spring/member/login">로그인</a>
						</li>
						 	
						 
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
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
  

	<div class="container">
		



<meta charset="UTF-8">
<title>Insert title here</title>




	<div>
		<div class="customer__root mt-5">
			<h2 class="customer__h2">구매자정보</h2>
			<table class="customer__table">
				<tbody>
					<tr>
						<td class="customer-name">이름</td>
						<td class="customer-namecheck"></td>
					</tr>
					<tr>
						<td class="customer-email">이메일</td>
						<td class="customer-emailcheck"></td>
					</tr>

				</tbody>
			</table>
		</div>

		<div>
			<div class="ordTitle mt-5">
				<h3 class="title">주문/결제</h3>
			</div>
			<div class="orderAddress">
				<h2 class="delivery-address__caption-header">
					받는사람정보
					<button class="delivery-address-change" type="button">배송지변경</button>
				</h2>
				<table class="delivery-address">
					<tbody>
						<tr>
							<th>이름</th>
							<td>
								<span id="delivery-address-name">이름출력 </span>
							</td>
						</tr>
						<tr>
							<th class="delivery-address-head">배송주소</th>
							<td class="delivery-address-body">배송지 주소출력 
								<div id="blocked-address-error-message" class="blocked-address-section" data-delivery-address__blocked-message="">
									<p class="blocked-address__error-message" hidden="">배송이 불가능한
										주소입니다. 다른 배송지를 입력하거나 선택해주세요.</p>
								</div>
							</td>
						</tr>
						<tr>
							<th class="delivery-address-phone">연락처</th>
							<td id="delivery-address-phonecheck">핸드폰 번호출력 </td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>


		<div class="order-section orderBox mb10 multiple-coupon">
			<h2 class="checkout__h2 mt-5">결제정보</h2>
				<table class="pay-price">
				<colgroup>
					<col width="144">
					<col>
				</colgroup>
				<tbody>
					<tr class="payOrder-wrap">
						<th class="wrap-title" scope="row">총상품가격</th>
						<td>
							<div class="payOrder">
								<strong class="price"> </strong>
							</div>
						</td>
					</tr>

					<tr class="payCoupangCash">
						<th class="wrap-title">쿠팡캐시</th>
						<td style="padding-top: 0;">
							<div>
								<strong class="price"> <span class="value use-calculation-for-totalprice" data-price="0">0</span><span class="unit">원</span>

								</strong> <span class="message"> <span class="usable">보유 :

										<strong class="value" data-price="0">0</strong><span class="unit">원</span>

								</span>
								</span>

								<button class="insert-cash-toggle">캐시사용하기</button>



							</div>
							<div class="coupangCash-insert">
								<div class="insert">
									<input type="text" class="using" value="" placeholder="0" title="사용할 쿠팡 캐시"><span class="unit">원</span> <span class="delimiter">|</span> <input id="cashAllUsing" class="" type="checkbox" value=""> <label for="cashAllUsing" class="">모두사용</label>
								</div>
								<div class="button-box">
									<button class="apply active">쿠팡캐시적용</button>
								</div>
								<p class="validate-message" style="display: none;"></p>
							</div>

						</td>
					</tr>




					<tr id="paySel" class="payType-wrap">
						<th class="wrap-title">결제방법</th>
						<td class="inputWrap payType">

							<div id="payBox" class="pay-box">
								<div class="pay-type-selector">

									<div id="payTypeInfoList" class="balloon-wrap" style="display: none;"></div>

									<div class="type-selector-list-wrapper">
										<ul id="payTypeList" class="type-selector-list">
										</ul>

									</div>
								</div>


								<div id="payTypeContent" class="pay-box-contents">
									<div class="virtualAccountPayBox pay-box-content selected-pay-type">
										<h3 class="title">무통장입금(가상계좌)</h3>

										<div class="virtual-account-payment pay-type-content" data-controller="vaPayment" data-controller-data="{
        &quot;savedBankKcpCode&quot; : &quot;&quot;
    }">
											<p class="validate-message" "=""></p>
											<ul class="pay-type-sections">
												<li class="deposit-bank-wrap pay-type-section"><label for="depositBank" class="line-title">입금은행</label>
													<div class="line-data">
														<select id="depositBank" class="" name="depositBank">
															<option value="" selected="" data-limitmsg="">선택</option>


															<option value="NH" data-limitmsg="" data-messagecolor="" data-paymentdisabled="false">농협은행</option>



															<option value="KB" data-limitmsg="" data-messagecolor="" data-paymentdisabled="false">국민은행</option>



															<option value="SHINHAN" data-limitmsg="" data-messagecolor="" data-paymentdisabled="false">신한은행</option>



															<option value="WOORI" data-limitmsg="" data-messagecolor="" data-paymentdisabled="false">우리은행</option>



															<option value="HANA" data-limitmsg="" data-messagecolor="" data-paymentdisabled="false">KEB하나은행</option>



															<option value="IBK" data-limitmsg="" data-messagecolor="" data-paymentdisabled="false">기업은행</option>


														</select>
														<p class="validate-message" style="display: none;"></p>
														<p class="pay-box__deactivated-payment-notice" id="virtualAccountPayTypeLimitMsg"></p>

													</div></li>
												<li class="payBox-section  pay-type-section"><span class="line-title">입금기한</span>

													<div class="line-data">
														<span class="depositDueTxt">2023년 09월 21일 15시 03분까지</span>

													</div></li>
												<li class="pay-type-explain">
													<p class="cash-receipt-explain">* 현금으로 결제한 모든 금액은 우리은행과
														채무지급보증계약을 체결하여 고객님의 안전거래를 보장하고 있습니다.</p>
												</li>
											</ul>
										</div>
										<dl class="virtual-account-payment-explain">
											<dt>무통장입금 시 유의사항</dt>
											<dd>입금완료 후 상품품절로 인해 자동취소된 상품은 환불 처리해 드립니다.</dd>
											<dd>무통장입금 결제 시 부분취소가 불가하며 전체취소 후 다시 주문하시기 바랍니다.</dd>
											<dd>은행 이체 수수료가 발생될 수 있습니다. 입금시 수수료를 확인해주세요.</dd>
										</dl>

									</div>




								</div>



							</div>




						</td>
					</tr>
				</tbody>
			</table>




		</div>




	</div>
	<button onclick="location.href='/spring/member/mypage' ">결제하기 </button>


	</div>
	

</body><!-- Bootstrap core JS--></html>