package kr.kh.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.kh.spring.service.OrderService;
import kr.kh.spring.util.Message;
import kr.kh.spring.vo.MemberVO;
import kr.kh.spring.vo.OrderVO;

@Controller
public class ShopController {
	
	@Autowired
	OrderService orderService;
	
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
	
	@PostMapping("/shop/order")
	public String insertOrder(OrderVO order, HttpSession session, Model model) {
		MemberVO user = (MemberVO)session.getAttribute("user");
		Message msg;
		if(orderService.insertOrder(order,user)) {
			msg = new Message("/member/mypage", "주문을 완료했습니다.");
		}else {
			msg = new Message("/shop/order", "주문을 완료하지 못했습니다.");
		}
		
		model.addAttribute("msg",msg);
		return "message";
	}
	
}
