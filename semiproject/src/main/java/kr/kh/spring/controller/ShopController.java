package kr.kh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ShopController {
	
	@GetMapping("/shop/detail")
	public String shopDetail() {
		return "/shop/detail";
	}
	
	@GetMapping("/shop/order")
	public String shopOrder() {
		return "/shop/order";
	}
	
	@GetMapping("/member/mypage")
	public String memberMypage(){
		return "/member/mypage";
	}
	
}
