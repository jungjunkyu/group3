package kr.kh.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.spring.vo.FileVO;
import kr.kh.spring.vo.ProductVO;

public interface AdminDAO {

	List<ProductVO> selectProductList();

	void insertFile(@Param("file") FileVO fileVo);

}
