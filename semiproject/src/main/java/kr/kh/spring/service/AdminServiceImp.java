package kr.kh.spring.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.edu.vo.BoardVO;
import kr.kh.edu.vo.MemberVO;
import kr.kh.spring.dao.AdminDAO;
import kr.kh.spring.util.UploadFileUtils;
import kr.kh.spring.vo.FileVO;
import kr.kh.spring.vo.OptionVO;
import kr.kh.spring.vo.ProductVO;

@Service
public class AdminServiceImp implements AdminService{
	@Autowired
	AdminDAO adminDao;
	
	String uploadPath = "D:\\uploadfiles";
	
	@Override
	public List<ProductVO> getProductList() {
		
		
		return adminDao.selectProductList();
	}

	
	
	
	
	private void uploadFileAndInsert(MultipartFile[] files, String pr_code) {
		if(files == null || files.length == 0) {
			return;
		}
		for(MultipartFile file : files) {
			if(file == null || file.getOriginalFilename().length() == 0) {
				continue;
			}
			try {
				String fi_name = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
				FileVO fileVo = new FileVO(pr_code, fi_name, file.getOriginalFilename());
				adminDao.insertFile(fileVo);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}





	@Override
	public boolean insertProduct(ProductVO product, MultipartFile[] file) {

			if(product == null || product.getPr_code() == null || product.getPr_name() == null || product.getPr_price() == 0) {
				return false;
			}
			//게시글을 DB에 저장
			boolean res = adminDao.insertProduct(product);
			if(!res) {
				return false;
			}
			//첨부파일 등록
			if(file == null || file.length == 0) {
				return false;
			}
			
			for(MultipartFile item : file) {
				if(item == null || item.getOriginalFilename().length() == 0) {
					continue;
				}
				try {
					//원래 파일명
					String fi_ori_name = item.getOriginalFilename();
					//서버에 업로드 후 업로드된 경로와 uuid가 포함된 파일명
					String fi_name = UploadFileUtils.uploadFile(uploadPath, fi_ori_name, item.getBytes());
					//파일 객체
					FileVO fileVo = new FileVO(product.getPr_code(), fi_name, fi_ori_name);
					adminDao.insertFile(fileVo);
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			return true;
	}

	@Override
	public ProductVO getProduct(String pr_code) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
