<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>주문/결제창</title>
<style>
.finish {
	margin: 0 auto; /* 박스 가운데 정렬 */
}
</style>
</head>
<body class="d-flex flex-column min-vh-100">

	<div>
		<div>
			<div class="ordTitle mt-5">
				<h3 class="title">주문/결제</h3>
			</div>
			<div class="orderAddress">
				<h2 class="delivery-address__caption-header">구매자 정보</h2>
				<table class="delivery-address">
					<tbody>
						<tr>
							<th>이름</th>
							<td><span id="delivery-address-name">${user.me_name}
							</span></td>
						</tr>
						
						<tr>
							<th>이메일</th>
							<td><span id="delivery-emailcheck">${user.me_email} </span></td>
						</tr>
						<tr>
							<th>보유 포인트 </th>
							<td><span id="delivery-pointcheck">${user.me_point} </span></td>
						</tr>
						<tr>
							<th>배송주소</th>
							<td class="delivery-address-body">${user.me_addr}${user.me_addr_detail}
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<div class="order-section orderBox mb10 multiple-coupon">
			<h2 class="checkout__h2 mt-5">결제정보</h2>
			<form action="<c:url value='/shop/order'/>" method="post">
				<table class="pay-price">
					<colgroup>
						<col width="144">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th>아이디</th>
							<td><span id="delivery-address-id" name="or_me_id">${user.me_id}
							</span></td>
						</tr>
						<tr class="payOrder-wrap">
							<th class="wrap-title" scope="row">상품가격</th>
							<td>
								<div class="payOrder">
									<strong class="price" name="or_total">${board.bo_price }
									</strong>
								</div>
							</td>
						</tr>

						<tr class="payCoupangCash">
							<th class="wrap-title">마일리지</th>
							<td style="padding-top: 0;">
								<div>
									<strong class="price"> <span>보유 : <span
											name="left_pnt">${user.me_point }</span></span><span class="unit">원</span>
									</strong>
								</div>
								<div class="coupangCash-insert">
									<div class="insert">
										<span><input type="number" name="use_pnt" id="use_pnt"
											onchange="changePoint(5000,'${user.me_point }')"
											placeholder="${user.me_point }"></span><span> <input
											type="checkbox" id="chk_use" onclick="chkPoint(5000,'${user.me_point }')">전부
											사용
										</span> ( 남은포인트 : </span><span name="left_pnt" id="left_pnt"></span> )

									</div>
									<p class="validate-message" style="display: none;"></p>
								</div>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<p class="bold txt_red">
									최종 결제 금액 : <span class="bold txt_red" id="result_pnt">${result_pnt}</span>
									원
								</p>
							</td>
						</tr>




						<tr id="paySel" class="payType-wrap">
							<th class="wrap-title">결제방법</th>
							<td class="inputWrap payType">

								<div id="payBox" class="pay-box">

									<div id="payTypeContent" class="pay-box-contents">
										<div
											class="virtualAccountPayBox pay-box-content selected-pay-type">
											<h3 class="title">무통장입금(가상계좌)</h3>

											<div class="virtual-account-payment pay-type-content">
												<p class="validate-message""=""></p>
												<ul class="pay-type-sections">
													<li class="deposit-bank-wrap pay-type-section"><label
														for="depositBank" class="line-title">입금은행</label>
														<div class="line-data">
															<select id="depositBank" class="" name="depositBank">
																<option value="" selected="" data-limitmsg="">선택</option>


																<option value="NH" data-limitmsg="" data-messagecolor=""
																	data-paymentdisabled="false">농협은행</option>



																<option value="KB" data-limitmsg="" data-messagecolor=""
																	data-paymentdisabled="false">국민은행</option>



																<option value="SHINHAN" data-limitmsg=""
																	data-messagecolor="" data-paymentdisabled="false">신한은행</option>



																<option value="WOORI" data-limitmsg=""
																	data-messagecolor="" data-paymentdisabled="false">우리은행</option>



																<option value="HANA" data-limitmsg=""
																	data-messagecolor="" data-paymentdisabled="false">KEB하나은행</option>



																<option value="IBK" data-limitmsg=""
																	data-messagecolor="" data-paymentdisabled="false">기업은행</option>


															</select>
																													</div></li>
													<li class="payBox-section  pay-type-section"><span
														class="line-title">입금기한</span>

														<div class="line-data">
															<span class="depositDueTxt">2023년 09월 21일 15시
																03분까지</span>

														</div></li>
													<li class="pay-type-explain">
														<p class="cash-receipt-explain">현금으로 결제한 모든 금액은
															우리은행과 채무지급보증계약을 체결하여 고객님의 안전거래를 보장하고 있습니다.</p>
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
				<button class="finish"
					onclick="location.href='/spring/member/mypage' ">결제하기</button>
			</form>
		</div>
	</div>



	<script type="text/javascript">
		function chkPoint(amt, pnt) {
			//amt : 최초 결제 금액 / pnt : 사용가능,남은 포인트
			var v_point = 0; //사용할 포인트 (input 입력값)

			if (document.getElementById("chk_use").checked) {

				v_point = pnt; //사용할 포인트

				if (pnt > amt) { //결제금액보다 포인트가 더 클 때
					v_point = amt; //사용할 포인트는 결제금액과 동일하게 설정
				}

			}
			document.getElementById("use_pnt").value = v_point; //input 값 설정

			changePoint(amt, pnt);
		}

		function changePoint(amt, pnt) {
			//input값을 가져옴 > left_pnt 변경 > 최종결제금액 변경
			//amt : 최초 결제 금액 / pnt : 사용가능,남은 포인트 / min : 사용 가능 최소 포인트 / unit : 사용단위
			var v_point = parseInt(document.getElementById("use_pnt").value); //사용할 포인트 (input 입력값)

			if (v_point > amt) { //결제금액보다 포인트가 더 클 때
				v_point = amt; //사용할 포인트는 결제금액과 동일하게 설정
				document.getElementById("use_pnt").value = v_point; //input 값 재설정
			}

			var v_left = document.getElementsByName("left_pnt"); //사용가능 포인트, 남은 포인트 값 설정
			for (var i = 0; i < v_left.length; i++) {

				v_left[i].innerHTML = pnt - v_point; //= 전체 포인트 중에 사용할 포인트빼고 남은 포인트

			}
			document.getElementById("result_pnt").innerHTML = amt - v_point; //최종 결제금액 = 결제금액 - 사용할 포인트
		}
	</script>






</body>
<!-- Bootstrap core JS-->
</html>