<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
body {
	background: #f1f4f6;
}

.container-head {
	min-width: 768px;
	margin: 0 auto; /* 박스 가운데 정렬 */
	position: relative;
	padding: 64px 0 42px;
	height: 156px;
	background-color: #fff;
	margin-top: 35px;
	border-radius: 15px;
}

.container-head .consumer-nameMain {
	width: 200px;
	float: left;
}

.container-head .consumer-name-check {
	width: 400px;
	float: right;
}

.container-body {
	min-width: 768px;
	min-height: 300px;
	background-color: #fff;
	border-radius: 15px;
	margin-top: 15px;
}

.container-footer {
	min-width: 768px;
	min-height: 300px;
	background-color: #fff;
	border-radius: 15px;
	margin-top: 15px;
}

.gKYVxm {
	border-top-left-radius: 12px;
	border-top-right-radius: 12px;
	border-bottom-right-radius: 12px;
	border-bottom-left-radius: 12px;
	box-shadow: rgba(0, 0, 0, 0.08) 0px 2px 4px 0px, rgba(0, 0, 0, 0.16) 0px
		0px 1px 0px;
	background-color: rgb(255, 255, 255);
	margin-bottom: 20px;
	padding-top: 24px;
	padding-right: 24px;
	padding-bottom: 16px;
	padding-left: 24px;
}
</style>
</head>
<body>

	<div class="container-main">
		<div class="container-head">
			<div class="consumer-nameMain">${user.me_id }</div>
			<div class="consumer-name-check">${user.me_point }</div>
		</div>


		<div class="container-body">
			<div class="sc-fimazj-0 gKYVxm">
				<div class="sc-abukv2-0 kcHmyx">
					<div class="sc-abukv2-1 kSZYgn">2023. 8. 22 주문</div>
					<div class="sc-abukv2-2 kThsCL">
						<span class="sc-abukv2-3 gSIruC">주문 상세보기</span>
					</div>
				</div>
				<div class="sc-gnmni8-0 hCVtNj">
					<table class="sc-gnmni8-1 eSpcfO">
						<colgroup>
							<col width="600">
							<col width="">
						</colgroup>
						<tbody class="sc-gnmni8-2 hryMPB">
							<tr class="sc-gnmni8-3 gmGnuU">
								<td class="sc-gnmni8-5 hUzAOG">
									<div class="sc-ki5ja7-0 bQVZKC">
										<div class="sc-ki5ja7-1 krPkOP">
											<span font-weight="bold" class="sc-755zt3-0 hullgd">배송완료</span>
											<span class="sc-755zt3-0 sc-lcvccu-0 eDgzyT dhoCVo">8/25(금)도착</span>
										</div>
									</div>
									<div class="sc-fe2r96-0 hmCrGF"></div>
									<div class="sc-1jiyjbz-0 dGiGeF">
										<div class="sc-gnmni8-9 kCcQTc">
											<div class="sc-g8964r-0 oRzGt"></div>
											<div class="sc-9cwg9-1 gLgexz">
												<div class="sc-9cwg9-2 cNiGzR">
													<div class="sc-9cwg9-3 eEDOvs">사진 자리</div>
													<div class="sc-9cwg9-5 bmwSdh">
														<div class="sc-9cwg9-6 jBCCpd">
															<div>제품이름</div>
															<div>가격</div>

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="sc-h20x0n-0 gcWEbw"></div>
			</div>
		</div>




		<div class="container-footer">
			<div class="sc-178zqvr-11 UxXQy">
				<div class="sc-178zqvr-12 fQDbaW">
					<b><i class="sc-178zqvr-13 bQUraS"></i><span
						class="i18n-wrapper"><span style="color: #e52628;">취소/반품/교환
								신청</span>전 확인해주세요!</span></b>
				</div>
				<div class="sc-178zqvr-14 bboIjZ">
					<strong class="sc-178zqvr-15 fWZpfp">취소</strong>
				</div>
				<div class="sc-178zqvr-14 bboIjZ">
					- <span class="i18n-wrapper">여행/레저/숙박 상품은 취소 시 수수료가 발생할 수
						있으며,<br> <span style="margin-left: 7px;">취소수수료를 확인하여
							2일 이내(주말,공휴일 제외) 처리결과를 문자로 안내해드립니다.</span>
					</span>(
					<!-- -->
					당일 접수 기준, 마감시간 오후 4시
					<!-- -->
					)
				</div>
				<div class="sc-178zqvr-14 bboIjZ">
					-
					<!-- -->
					문화 상품은 사용 전날 24시까지 취소 신청 시 취소수수료가 발생되지 않습니다.
				</div>
				<div class="sc-178zqvr-14 bboIjZ">
					<strong class="sc-178zqvr-15 fWZpfp">반품</strong>
				</div>
				<div class="sc-178zqvr-14 bboIjZ">
					-
					<!-- -->
					상품 수령 후 7일 이내 신청하여 주세요.
				</div>
				<div class="sc-178zqvr-14 bboIjZ">
					-
					<!-- -->
					<!-- -->
					상품이 출고된 이후에는 배송 완료 후, 반품 상품을 회수합니다.
				</div>
				<div class="sc-178zqvr-14 bboIjZ">
					-
					<!-- -->
					<!-- -->
					설치상품/주문제작/해외배송/신선냉동 상품 등은 고객센터에서만 반품 신청이 가능합니다.
					<!-- -->
					<a href="/ssr/desktop/contact/inquiry" target="_blank"
						class="sc-178zqvr-16 jgRggD">1:1문의하기</a>
				</div>
				<div class="sc-178zqvr-14 bboIjZ">
					<strong class="sc-178zqvr-15 fWZpfp">교환</strong>
				</div>
				<div class="sc-178zqvr-14 bboIjZ">
					-
					<!-- -->
					<!-- -->
					상품의 교환 신청은 고객센터로 문의하여 주세요.<a href="/ssr/desktop/contact/inquiry"
						target="_blank" class="sc-178zqvr-16 jgRggD">1:1문의하기</a>
				</div>
			</div>

		</div>

	</div>

</body>
</html>