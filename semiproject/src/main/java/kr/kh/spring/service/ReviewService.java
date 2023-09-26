package kr.kh.spring.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.vo.BoardVO;
import kr.kh.spring.vo.ReviewVO;

public interface ReviewService {

	boolean insertReview(ReviewVO review);

	List<ReviewVO> getReviewList(Criteria cri, int bo_num);

	int getTotalCount(int bo_num);

}
