package kr.kh.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.vo.BoardVO;
import kr.kh.spring.vo.FileVO;

public interface BoardDAO {

	boolean insertBoard(@Param("board")BoardVO board);

	void insertFile(@Param("file")FileVO fileVo);
	
	List<BoardVO> selectBoardList(@Param("cri")Criteria cri);
	
	FileVO selectFile(@Param("fi_num") Integer num);
	
	int selectBoardCount(@Param("cri")Criteria cri);

	BoardVO selectBoard(@Param("bo_num")Integer bo_num);

	void updateBoardReview(@Param("re_bo_num")Integer re_bo_num);

	void UpdateBoard(@Param("board") BoardVO board);

	void UpdateFile(@Param("file") FileVO fileVo);


	void deleteBoard(@Param("bo_num") Integer bo_num);

	void deleteFile(@Param("fi_num") Integer num);

}
