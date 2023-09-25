package kr.kh.spring.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.spring.dao.ReviewDAO;
import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.util.UploadFileUtils;
import kr.kh.spring.vo.FileVO;
import kr.kh.spring.vo.ReviewVO;

@Service
public class ReviewServiceImp implements ReviewService{

	@Autowired
	ReviewDAO reviewDao;
	
	String uploadPath = "D:\\uploadfiles";
	
	@Override
	public boolean insertReview(ReviewVO review,  MultipartFile[] files) {
		if(review == null || review.getRe_contents()==null) {
			return false;
		}
		
		boolean res = reviewDao.insertReview(review);
		if(!res) {
			return false;
		}
		//첨부파일을 업로드
		if(files == null || files.length == 0) {
			return true;
		}
				
		//첨부파일을 서버에 업로드 하고, DB에 저장
		uploadFileAndInsert(files, review.getRe_num());
		return true;
		
	}
	private void uploadFileAndInsert(MultipartFile[] files, int re_num) {
		if(files == null || files.length == 0) {
			return;
		}
		for(MultipartFile file : files) {
			if(file == null || file.getOriginalFilename().length() == 0) {
				continue;
			}
			try {
				String fi_name = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
				FileVO fileVo = new FileVO(re_num, fi_name, file.getOriginalFilename());
				reviewDao.insertFile(fileVo);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public List<ReviewVO> getReviewList(Criteria cri) {
		if(cri == null) {
			cri = new Criteria(); 
		}
		return reviewDao.selectReviewList(cri);
	}

	@Override
	public int getTotalCount() {
		return reviewDao.selectReviewCount();
	}

}
