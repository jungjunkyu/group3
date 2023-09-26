package kr.kh.spring.service;

import java.util.List;

import kr.kh.spring.vo.OptionVO;
import kr.kh.spring.vo.ProductVO;

public interface AdminService {

	List<ProductVO> getProductList();

	boolean insertProduct(ProductVO product);

	ProductVO getProductDetail(String pr_code);

	boolean updateProduct(ProductVO product);

	boolean insertOption(OptionVO option);




}
