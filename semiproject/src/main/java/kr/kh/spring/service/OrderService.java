package kr.kh.spring.service;

import java.util.List;

import kr.kh.spring.vo.MemberVO;
import kr.kh.spring.vo.OrderVO;

public interface OrderService {

	boolean insertOrder(OrderVO order, MemberVO user);

	List<OrderVO> getOrderList(OrderVO order, MemberVO user);

	
}
