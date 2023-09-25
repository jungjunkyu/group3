package kr.kh.spring.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.vo.ReviewVO;

public interface ReviewService {

	boolean insertReview(ReviewVO review, MultipartFile[] files);

	List<ReviewVO> getReviewList(Criteria cri);

	int getTotalCount();

}
