package kr.kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kh.spring.dao.AdminDAO;
import kr.kh.spring.vo.OptionVO;
import kr.kh.spring.vo.ProductVO;

@Service
public class AdminServiceImp implements AdminService {
	@Autowired
	AdminDAO adminDao;
	

	@Override
	public List<ProductVO> getProductList() {
		// TODO Auto-generated method stub
		return adminDao.getProductList();
	}


	@Override
	public boolean insertProduct(ProductVO product) {
		
		return adminDao.insertProduct(product);
	}


	@Override
	public ProductVO getProductDetail(String pr_code) {
		// TODO Auto-generated method stub
		return adminDao.getProductDetail(pr_code);
	}


	@Override
	public boolean updateProduct(ProductVO product) {
		
		//ProductVO updateProduct = adminDao.getProductDetail(product.getPr_code());
		boolean res = adminDao.updateProduct(product);
		if(!res) {
			System.out.println("제품 업데이트실패");
			return false;
		}else {
			System.out.println("제품 등록 성공");
		}
		return true;
	}


	@Override
	public boolean insertOption(OptionVO option) {
		boolean res = adminDao.insertOption(option);
		if(!res) {
			System.out.println("옵션 등록 실패");
			return false;
		}else {
			System.out.println("admin 서비스 옵션 등록 성공");
		}
		return true;
	}






}
