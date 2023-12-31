package kr.kh.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.pagination.PageMaker;
import kr.kh.spring.service.BoardService;
import kr.kh.spring.util.Message;
import kr.kh.spring.vo.BoardVO;
import kr.kh.spring.vo.MemberVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/list")
	public String list(Model model, Criteria cri) {
		cri.setPerPageNum(8);
		//현재 페이지에 맞는 게시글을 가져와야함
		List<BoardVO> list = boardService.getBoardList(cri);
		int totalCount = boardService.getTotalCount(cri);
		PageMaker pm = new PageMaker(3, cri, totalCount);
		
		model.addAttribute("pm", pm);
		model.addAttribute("list", list);
		return "/board/list";
	}
	
	@GetMapping("/insert")
	public String insert() {
		return "/board/insert";
	}
	@PostMapping("/insert")
	public String insertPost(BoardVO board, Model model, MultipartFile[] files2) {
		Message msg;
		if(boardService.insertBoard(board, files2)) {
			msg = new Message("/", "제품을 등록했습니다.");
		}else {
			msg = new Message("/board/insert", "제품을 등록하지 못했습니다.");
		}
		model.addAttribute("msg", msg);
		return "message";
	}
	
	@GetMapping("/detail")
	public String detail(Model model, Integer bo_num , Criteria cri, HttpSession session) {
		BoardVO board = boardService.getBoard(bo_num);
		MemberVO user = (MemberVO) session.getAttribute("user");
		model.addAttribute("board", board);
		model.addAttribute("cri", cri);
		return "/board/detail";
	}
	
	@GetMapping("/updateDelete")
	public String update(Model model, Criteria cri) {
		cri.setPerPageNum(6);
		//현재 페이지에 맞는 게시글을 가져와야함
		List<BoardVO> list = boardService.getBoardList(cri);
		int totalCount = boardService.getTotalCount(cri);
		PageMaker pm = new PageMaker(3, cri, totalCount);
		
		model.addAttribute("pm", pm);
		model.addAttribute("list", list);
		return "/board/updateDelete";
	}
	
	@GetMapping("/insertUpdate")
	public String insertUpdate(Model model, Integer bo_num) {
		BoardVO board = boardService.getBoard(bo_num);
		model.addAttribute("board",board);
		return "/board/insertUpdate";
	}
	
	@PostMapping("/insertUpdate")
	public String insertUpdatePost(BoardVO board, Model model, MultipartFile[] files2) {
		Message msg;
		
		if(boardService.updateBoard(board, files2)) {
			msg = new Message("/", "제품을 수정했습니다.");
		}else {
			msg = new Message("/board/insertUpdate", "제품을 수정하지 못했습니다.");
		}
		model.addAttribute("msg", msg);
		return "message";
	}
	
	@GetMapping("/delete")
	public String delete(Model model, Integer bo_num) {
		Message msg;
		
		if(boardService.deleteBoard(bo_num)) {
			msg = new Message("/", "제품을 삭제했습니다.");
		}else {
			msg = new Message("/board/updateDelete", "제품을 수정하지 못했습니다.");
		}
		model.addAttribute("msg",msg);
		return "message";
	}
}













