package kr.kh.spring.dao;

import org.apache.ibatis.annotations.Param;

import kr.kh.spring.vo.OrderVO;

public interface OrderDAO {

	boolean insertOrder(@Param("order") OrderVO order);

}
