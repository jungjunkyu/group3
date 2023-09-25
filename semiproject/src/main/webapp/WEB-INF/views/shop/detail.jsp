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
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="https://dummyimage.com/600x700/dee2e6/6c757d.jpg" alt="..." /></div>
                    <div class="col-md-6">
                        <div class="small mb-1">ssssss</div>
                        <h1 class="display-5 fw-bolder">제품명</h1>
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through">$가격</span>
                            <span>$할인가격</span>
                        </div>
                        <p class="lead">Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium at dolorem quidem modi. Nam sequi consequatur obcaecati excepturi alias magni, accusamus eius blanditiis delectus ipsam minima ea iste laborum vero?</p>
                        <div class="d-flex">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Review section-->
	<section class="mb-5">
		<div class="card bg-light">
			<div class="card-body">
				<!-- 댓글 목록창 -->
				<div class="d-flex mb-4 w-100 review-list">
					<div class="flex-shrink-0">
						<img class="rounded-circle"
							src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
					</div>
					<div class="ms-3">
						<div class="fw-bold">
							<label id="star">★</label>()
						</div>
						<div class="fw-bold">Commenter Name 2011-11-11</div>
						리뷰내용
					</div>
				</div>
				<div class="d-flex w-100 review-list">
					<div class="flex-shrink-0">
						<img class="rounded-circle"
							src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
					</div>
					<div class="ms-3">
						<div class="fw-bold">
							<label id="star">★</label>()
						</div>
						<div class="fw-bold">Commenter Name 2011-11-11</div>
						리뷰내용
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 댓글 페이지네이션 -->
				<ul class="pagination justify-content-center mt-3 review-pagination">
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);">이전</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);">1</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);">2</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);">다음</a></li>
				</ul>
		
	<script type="text/javascript">
//현재 페이지 정보가 주어지면 현재 페이지에 맞는 댓글 리스트를 가져와서 화면에 출력하는 함수

let cri = {
			page : 1,
			perPageNum : 2,
	}
getReviewList(cri);
function getReviewList(cri){
	ajaxJsonToJson(false,'post','/shop/detail/', cri ,(data)=>{
		//댓글 리스트 추가
		createReviewList(data.list, '.review-list');
		
		createPagination(data.pm, '.review-pagination');
	});
}
function createPagination(pm, target){
	let str = '';
	if(pm.prev){
		str += `<li class="page-item"><a class="page-link" href="javascript:void(0);" onclick="cri.page=\${pm.startPage-1};getReviewList(cri)">이전</a></li>`;
	}
	for(i=pm.startPage; i<=pm.endPage; i++){
		let active = pm.cri.page == i ? 'active' : '';
		str += `
		<li class="page-item \${active}">
			<a class="page-link" href="javascript:void(0);" onclick="cri.page=\${i};getReviewList(cri)">\${i}</a>
		</li>`;
	}
	if(pm.next){
		str += `<li class="page-item"><a class="page-link" href="javascript:void(0);" onclick="cri.page=\${pm.endPage+1};getReviewList(cri)">다음</a></li>`;
	}
	$(target).html(str);
}

//댓글 리스트가 주어지면 댓글을 만들어서 target안에 넣어주는 함수 

function createReviewList(reviewList, target){
	let str = '';
	if(reviewList.length == 0){
		str = '<div class="border rounded-sm border-danger p-3 mt-3">등록된 댓글이 없습니다.</div>';
	}
	for(review of reviewList){
		let btnStr = '';
		if('${user.me_id}' == review.re_me_id){
			btnStr = `
			<div class="btn-group">
				<button class="btn btn-outline-warning btn-review-update" data-num="\${review.re_num}">수정</button>
				<button class="btn btn-outline-danger btn-review-delete" onclick="deleteReview(\${review.re_num})">삭제</button>
			</div>
			`;
		}
		str += `
		<div class="d-flex mb-4 w-100 review-list">
			<div class="flex-shrink-0">
			<input type="hidden" name="re_num" value="\${review.re_num}">
				<img class="rounded-circle"
					src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
			</div>
			<div class="ms-3">
				<div class="fw-bold"><label id="star">★</label>(\${review.re_star})</div>
				<div class="fw-bold">\${review.re_me_id}</div>
				<div class="fw-bold">\${review.re_time}</div>
				\${review.re_contents}
			</div>
			\${btnStr}
		</div>`;
	}
	$(target).html(str);
}
</script>
	
</body>
</html>