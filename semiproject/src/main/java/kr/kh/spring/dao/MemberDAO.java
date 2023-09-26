package kr.kh.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.spring.pagination.Criteria;
import kr.kh.spring.vo.BoardVO;
import kr.kh.spring.vo.MemberVO;
import kr.kh.spring.vo.OrderVO;

public interface MemberDAO {

	MemberVO selectMember(@Param("me_id")String me_id);

	boolean insertMember(@Param("m")MemberVO member);

	void updateMemberSession(@Param("user")MemberVO user);

	MemberVO selectMemberBySession(@Param("session_id")String session_id);

	


}
