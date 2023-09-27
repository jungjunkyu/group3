package kr.kh.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.pagination.PageMaker;
import kr.kh.spring.service.BoardService;
import kr.kh.spring.service.ReviewService;
import kr.kh.spring.vo.BoardVO;
import kr.kh.spring.vo.MemberVO;
import kr.kh.spring.vo.ReviewVO;

@Controller
public class ReviewController {

	@Autowired
	ReviewService reviewService; 
	@Autowired
	BoardService boardService; 
	
	
	@GetMapping("/review/insert")
	public String reviewInsert(Model model, Integer bo_num , Criteria cri, HttpSession session) {
	MemberVO user = (MemberVO) session.getAttribute("user");
	BoardVO board = boardService.getBoard(bo_num);
	model.addAttribute("board", board);
	model.addAttribute("cri", cri);
	return "/review/insert";
	}
	
	@ResponseBody
	@PostMapping("/review/insert")
	public Map<String, Object> insert(@RequestBody ReviewVO review){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean res = reviewService.insertReview(review); 
		map.put("res", res);
		return map;
	}
	
	@ResponseBody
	@PostMapping("/review/list/{bo_num}")
	public Map<String, Object> list(@RequestBody Criteria cri,@PathVariable("bo_num")int bo_num){
		Map<String, Object> map = new HashMap<String, Object>();
		List<ReviewVO> list = reviewService.getReviewList(cri,bo_num);
		int totalCount = reviewService.getTotalCount(bo_num);
		PageMaker pm = new PageMaker(3, cri, totalCount);
		map.put("list", list);
		map.put("pm", pm);
		return map;
	}
	@ResponseBody
	@PostMapping("/review/delete")
	public Map<String, Object> delete(@RequestBody ReviewVO review){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean res = reviewService.deleteReview(review);
		map.put("res", res);
		return map;
	}
	@ResponseBody
	@PostMapping("/review/update")
	public Map<String, Object> update(@RequestBody ReviewVO review){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean res = reviewService.updateReview(review);
		map.put("res", res);
		return map;
	}
	
}
