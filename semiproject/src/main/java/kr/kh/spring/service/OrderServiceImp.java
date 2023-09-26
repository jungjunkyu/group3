package kr.kh.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kh.spring.dao.MemberDAO;
import kr.kh.spring.dao.OrderDAO;
import kr.kh.spring.vo.MemberVO;
import kr.kh.spring.vo.OrderVO;

@Service
public class OrderServiceImp implements OrderService {

	@Autowired
	OrderDAO orderDao;
	
	
	
	@Override
	public boolean insertOrder(OrderVO order, MemberVO user) {
		if(user == null || user.getMe_id() == null) {
			return false;
		}
		order.setOr_me_id(user.getMe_id());
		if(!orderDao.insertOrder(order)) {
			return true;
		}
		return true;
	}

	@Override
	public List<OrderVO> getOrderList(OrderVO order, MemberVO user) {
		List<OrderVO> list = orderDao.selectOrderList(order, user);
		return list;
	}

	

	

	

}
