package kr.kh.spring.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import kr.kh.spring.vo.CommentVO;

@RestController
public class ReviewController {

	@GetMapping("/review/insert")
	public String reviewInsert() {
		return "/review/insert";
	}
	
	@PostMapping("/comment/insert")
	public Map<String, Object> insert(@RequestBody reviewVO review){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean res = reviewService.insertComment(review);
		map.put("res", res);
		return map;
	}
}
