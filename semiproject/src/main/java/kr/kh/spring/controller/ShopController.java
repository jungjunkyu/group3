package kr.kh.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.kh.spring.service.BoardService;
import kr.kh.spring.service.OrderService;
import kr.kh.spring.util.Message;
import kr.kh.spring.vo.BoardVO;
import kr.kh.spring.vo.MemberVO;
import kr.kh.spring.vo.OrderVO;

@Controller
public class ShopController {
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/shop/detail")
	public String shopDetail() {
		return "/shop/detail";
	}
	
	@GetMapping("/shop/order")
	public String shopOrder(Integer bo_num, Model model) {
		BoardVO board = boardService.getBoard(bo_num);
		model.addAttribute("board", board);
		
		return "/shop/order";
	}
	
	@GetMapping("/member/mypage")
	public String memberMypage(Model model,  HttpSession session, OrderVO order){
		//서비스에게 주문 리스트를 가져오라고 시킴 
		MemberVO user = (MemberVO)session.getAttribute("user");
		List<OrderVO> list = orderService.getOrderList(order,user);
		model.addAttribute("list", list);
		
		
		
		
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
//		model.addAttribute("or_num", order.getOr_num());
		
		model.addAttribute("msg",msg);
		
		
		return "message";
	}
	
}
