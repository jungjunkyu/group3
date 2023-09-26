package kr.kh.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.kh.spring.vo.MemberVO;

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