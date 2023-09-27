package kr.kh.spring.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.spring.dao.BoardDAO;
import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.util.UploadFileUtils;
import kr.kh.spring.vo.BoardVO;
import kr.kh.spring.vo.FileVO;
import kr.kh.spring.vo.MemberVO;

@Service
public class BoardServiceImp implements BoardService{

	@Autowired
	BoardDAO boardDao;
	
	String uploadPath = "D:\\uploadfiles";

	@Override
	public boolean insertBoard(BoardVO board,MultipartFile[] files) {
		if(board == null || board.getBo_name()==null) {
			return false;
		}
		boardDao.insertBoard(board);
		//첨부파일을 업로드
		if(files == null || files.length == 0) {
			return true;
		}
		
		//첨부파일을 서버에 업로드 하고, DB에 저장
		uploadFileAndInsert(files, board.getBo_num());	
		return true;
	}
	
	private void uploadFileAndInsert(MultipartFile[] files, int bo_num) {
		if(files == null || files.length == 0) {
			return;
		}
		for(MultipartFile file : files) {
			if(file == null || file.getOriginalFilename().length() == 0) {
				continue;
			}
			try {
				String fi_name = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
				FileVO fileVo = new FileVO(bo_num, fi_name, file.getOriginalFilename());
				boardDao.insertFile(fileVo);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public List<BoardVO> getBoardList(Criteria cri) {
		if(cri == null) {
			cri = new Criteria();
		}
		return boardDao.selectBoardList(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		if(cri == null) {
			cri = new Criteria();
		}
		return boardDao.selectBoardCount(cri);
	}

	@Override
	public BoardVO getBoard(Integer bo_num) {
		if(bo_num == null) {
			return null;
		}
		return boardDao.selectBoard(bo_num);
	}
	
	@Override
	public boolean updateBoard(BoardVO board, MultipartFile[] files) {
		if(board == null || board.getBo_name()==null) {
			return false;
		}
		
		boardDao.UpdateBoard(board);
		if(files == null || files.length == 0) {
			return true;
		}
		updateFileAndUpdateInsert(files, board.getBo_num());	
		return true;
	}
	
	
	private void updateFileAndUpdateInsert(MultipartFile[] files, Integer bo_num) {
		if(files == null || files.length == 0) {
			return;
		}
		for(MultipartFile file : files) {
			if(file == null || file.getOriginalFilename().length() == 0) {
				continue;
			}
			try {
				String fi_name = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
				FileVO fileVo = new FileVO(bo_num, fi_name, file.getOriginalFilename());
				boardDao.UpdateFile(fileVo);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	private void deleteFile(Integer[] delFiles) {
		if(delFiles == null || delFiles.length == 0) {
			return;
		}
		
		for(Integer num : delFiles) {
			if(num == null) {
				continue;
			}
			//첨부파일 정보를 가져옴
			FileVO fileVo = boardDao.selectFile(num);
			if(fileVo == null) {
				continue;
			}
			UploadFileUtils.deleteFile(uploadPath, fileVo.getFi_name());
			//DB에서 제거 
			boardDao.deleteFile(num);
		}
		
	}

	@Override
	public boolean deleteBoard(Integer bo_num) {
		if(bo_num == null) {
			return false;
		}
		BoardVO board = boardDao.selectBoard(bo_num);
		
		if(board == null) {
			return false;
		}
		//첨부파일 삭제
		List<FileVO> fileList = board.getFileVoList();
		deleteFile(fileList);
		//제품 삭제 
		boardDao.deleteBoard(bo_num);
		return true;
	}

	private void deleteFile(List<FileVO> fileList) {
		if(fileList == null || fileList.size() == 0) {
			return;
		}
		//List<FileVO> => Integer[]
		Integer [] nums = new Integer[fileList.size()];
		for(int i = 0; i<nums.length; i++) {
			nums[i] = fileList.get(i).getFi_num();
		}
		deleteFile(nums);
	}

}






