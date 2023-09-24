package kr.kh.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.spring.service.AdminService;
import kr.kh.spring.vo.AdminVO;
import kr.kh.spring.vo.OptionVO;
import kr.kh.spring.vo.ProductVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminService adminService;
	
		
	// 제품 리스트 가져오기
	@GetMapping("/list")
	public String productList(Model model) {	
		
		List<ProductVO> list = adminService.getProductList();
		model.addAttribute(list);
		return "/admin/list";
	}
	
	// 상세 정보 가져오기
	@GetMapping("/detail")
	public String productDetail(Model model, String pr_code) {	
		ProductVO product = adminService.getProduct(pr_code);
		model.addAttribute("product", product);
		return "/admin/detail";
	}
	
	// 등록완료 시 알럿 뜨고 제품리스트로
	@PostMapping("/insert")
	public String productInsert(Model model,ProductVO product, MultipartFile[] file) {	
		
		boolean res = adminService.insertProduct(product, file);
		if(res) {
			System.out.println("등록성공");
		}else {
			System.out.println("등록실패");
		}
		return "/admin/list";
	}
	
	// 수정완료 시 알럿 뜨고 제품리스트로
	@PostMapping("/update")
	public String productUpdate() {	
		return "/admin/list";
	}
	// 삭제완료 시 알럿 뜨고 제품리스트로
	@PostMapping("/delete")
	public String productDelete() {	
		return "/admin/list";
	}
	
	
}
