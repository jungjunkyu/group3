package kr.kh.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.kh.spring.service.AdminService;
import kr.kh.spring.vo.ProductVO;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@GetMapping("/list")
	public String list(Model model) {
		List<ProductVO> list = adminService.getProductList();
		model.addAttribute("list", list);
		return "/admin/list";
	}
	
	@GetMapping("/detail")
	public String detail(Model model, String pr_code) {
		ProductVO product = adminService.getProductDetail(pr_code);
		model.addAttribute("product", product);
		return "/admin/detail";
	}
	
	@GetMapping("/insert")
	public String insert() {
		return "/admin/insert";
	}
	
	@PostMapping("/insert")
	public String insertProduct(ProductVO product) {
		boolean res = adminService.insertProduct(product);
		if(res) {
			System.out.println("등록");
		}else {
			System.out.println("실패");
		}
		
		return "/admin/list";
	}
	
	@GetMapping("/update")
	public String update(Model model, String pr_code) {
		ProductVO product = adminService.getProductDetail(pr_code);
		model.addAttribute("product",product);
		return "/admin/list";
	}
	
	@PostMapping("/update")
	public String updateList(Model model, ProductVO product) {
		
		boolean res = adminService.updateProduct(product);
		if(res) {
			System.out.println("성공");
		}else {System.out.println("실패");}
		return "/admin/list";
	}
	
	
}
