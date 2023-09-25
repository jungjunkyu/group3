package kr.kh.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.vo.FileVO;
import kr.kh.spring.vo.ReviewVO;

public interface ReviewDAO {

	boolean insertReview(@Param("review")ReviewVO review);

	List<ReviewVO> selectReviewList(@Param("cri")Criteria cri);

	int selectReviewCount();

	void insertFile(@Param("fileVo")FileVO fileVo);

}