package kr.kh.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.vo.FileVO;
import kr.kh.spring.vo.ReviewVO;

public interface ReviewDAO {

	boolean insertReview(@Param("review")ReviewVO review);

	List<ReviewVO> selectReviewList(@Param("cri")Criteria cri,@Param("bo_num")int bo_num);

	int selectReviewCount(@Param("bo_num") int bo_num );

}
