package kr.kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kh.spring.dao.AdminDAO;
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
		boolean res = adminDao.updateProduct(product);
		if(!res) {
			System.out.println("실패");
			return false;
		}
		return true;
	}

}
