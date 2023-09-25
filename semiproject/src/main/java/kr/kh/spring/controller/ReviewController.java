package kr.kh.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.pagination.PageMaker;
import kr.kh.spring.service.ReviewService;
import kr.kh.spring.vo.ReviewVO;

@Controller
public class ReviewController {

	@Autowired
	ReviewService reviewService; 
	
	@GetMapping("/review/insert")
	public String reviewInsert() {
		return "/review/insert";
	}
	
	@ResponseBody
	@PostMapping("/review/insert")
	public Map<String, Object> insert(@RequestBody ReviewVO review,@RequestParam("files")MultipartFile[] files){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean res = reviewService.insertReview(review,files); 
		map.put("res", res);
		return map;
	}
	
	@ResponseBody
	@PostMapping("/board/detail")
	public Map<String, Object> list(@RequestBody Criteria cri){
		Map<String, Object> map = new HashMap<String, Object>();
		List<ReviewVO> list = reviewService.getReviewList(cri);
		int totalCount = reviewService.getTotalCount();
		PageMaker pm = new PageMaker(3, cri, totalCount);
		map.put("list", list);
		map.put("pm", pm);
		return map;
	}
}
