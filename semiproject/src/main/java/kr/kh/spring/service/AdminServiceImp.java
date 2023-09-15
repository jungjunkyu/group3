package kr.kh.spring.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.spring.dao.AdminDAO;
import kr.kh.spring.util.UploadFileUtils;
import kr.kh.spring.vo.FileVO;
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
	
}
