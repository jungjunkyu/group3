package kr.kh.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.spring.vo.MemberVO;
import kr.kh.spring.vo.OrderVO;

public interface OrderDAO {

	boolean insertOrder(@Param("order") OrderVO order);


	List<OrderVO> selectOrderList(@Param("order")OrderVO order, @Param("user") MemberVO user);




}
