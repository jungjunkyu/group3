package kr.kh.spring.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.kh.spring.vo.OptionVO;
import kr.kh.spring.vo.ProductVO;

public interface AdminService {

	List<ProductVO> getProductList();

	boolean insertProduct(ProductVO productVo, MultipartFile[] file);

	ProductVO getProduct(String pr_code);

}
