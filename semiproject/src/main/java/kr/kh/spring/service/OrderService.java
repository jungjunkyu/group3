package kr.kh.spring.service;

import kr.kh.spring.vo.MemberVO;
import kr.kh.spring.vo.OrderVO;

public interface OrderService {

	boolean insertOrder(OrderVO order, MemberVO user);
}
