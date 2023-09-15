<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="/css/style.css" rel="stylesheet"/>
	
<meta charset="UTF-8">
<title>리뷰 작성</title>
</head>
<body>
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<!-- Comments Form -->
			<div class="card my-4">
				<h5 class="card-header">리뷰</h5>
				<div class="card-body">
					<form action="<c:url value='/review/insert'/>" method="post" enctype="multipart/form-data">
						<fieldset class="mb-3" name="myform" id="myform">
								<span class="text-bold">별점을 선택해주세요</span> 
								<input type="radio"	name="reviewStar" value="5" id="rate1"><label
									for="rate1">★</label> <input type="radio" name="reviewStar"
									value="4" id="rate2"><label for="rate2">★</label> <input
									type="radio" name="reviewStar" value="3" id="rate3"><label
									for="rate3">★</label>
									 <input type="radio" name="reviewStar"	value="2" id="rate4">
									<label for="rate4">★</label> <input
									type="radio" name="reviewStar" value="1" id="rate5"><label
									for="rate5">★</label>
							</fieldset>
						<div class="form-group">
							<textarea class="form-control" rows=5"></textarea>
						</div>
						<div class="form-group">
							<label>첨부파일</label> <input type="file" class="form-control"
								name="files">
						</div>
						<button type="submit" class="btn btn-primary">작성하기</button>
					</form>
				</div>
			</div>
		</div>
	</section>

</body>
</html>