package kr.kh.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.pagination.PageMaker;
import kr.kh.spring.service.BoardService;
import kr.kh.spring.vo.BoardVO;


@Controller
public class HomeController {
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/")
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
}







