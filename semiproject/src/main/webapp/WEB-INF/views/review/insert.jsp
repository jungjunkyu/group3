<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>	
<meta charset="UTF-8">
<title>리뷰 작성</title>
</head>
<body>
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">리뷰 작성</h5>
				<div class="card-body">
					<!-- <form action="<c:url value='/review/insert'/>" method="post" enctype="multipart/form-data">-->
					<fieldset class="mb-3" name="myform" id="myform">
						<span class="text-bold">별점을 선택해주세요</span> <input type="radio"
							value="5" id="rate1" name="re_star" checked> <label
							for="rate1">★</label> <input type="radio" value="4" id="rate2"
							name="re_star"> <label for="rate2">★</label> <input
							type="radio" value="3" id="rate3" name="re_star"> <label
							for="rate3">★</label> <input type="radio" value="2" id="rate4"
							name="re_star"> <label for="rate4">★</label> <input
							type="radio" value="1" id="rate5" name="re_star"> <label
							for="rate5">★</label>
					</fieldset>
					<div class="form-group">
						<textarea class="form-control" rows=5 " placeholder="리뷰를 입력해주세요."
							name="re_contents"></textarea>
					</div>

					<div class="form-group">
						<input type="file" class="form-control"	name="files">
					</div>
					<input type="hidden" name="bo_num" value="${bo_num}">
					<button type="submit" class="btn btn-primary btn-review-insert">작성하기</button>
				</div>
			</div>
		</div>
	</section>
	<!-- 댓글 기능 자바스크립트 -->
<script type="text/javascript">
	//리뷰 등록버튼을 클릭했을 때
	$('.btn-review-insert').click(()=>{
		//댓글 내용 확인  
		let re_contents = $('[name = re_contents]').val();
		let re_star = $('input:radio[name = re_star]:checked').val();
		if(re_contents == ''){
			alert('내용을 입력하세요.');
			return;
		}
		let review = {
				re_star : re_star,
				re_contents : re_contents,
				re_bo_num : '${board.bo_num}',
				re_me_id : '${user.me_id}'
		}
		
		ajaxJsonToJson(false,'post','/review/insert', review,(data)=>{
			if(data.res){
				alert('리뷰을 등록했습니다.');
				$('[name=re_contents]').val('');
			}else{
				alert('리뷰를 등록하지 못했습니다.');
			}	
			cri.page = 1;
			getReviewList(cri);
			
		});
		location.href = '<c:url value="/board/list"/>';
	});
</script>
</body>
</html>