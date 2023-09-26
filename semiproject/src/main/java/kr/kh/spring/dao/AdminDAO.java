package kr.kh.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.spring.vo.OptionVO;
import kr.kh.spring.vo.ProductVO;

public interface AdminDAO {

	List<ProductVO> getProductList();

	boolean insertProduct(@Param("product") ProductVO product);

	ProductVO getProductDetail(@Param("pr_code") String pr_code);

	boolean updateProduct(@Param("product") ProductVO product);

	boolean insertOption(@Param("option") OptionVO option);

}
