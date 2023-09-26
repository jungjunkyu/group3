package kr.kh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShopController {
	
	@GetMapping("/shop/detail")
	public String shopDetail() {
		return "/shop/detail";
	}
}
