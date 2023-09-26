package kr.kh.spring.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {

	String me_id;
	String me_pw;
	String me_role;
	String me_email;
	String me_name;
	String me_addr;
	String me_addr_detail;
	int me_point;
	
	//자동 로그인 관련 속성
	private String me_session_id;
	private Date me_session_limit;
	
	private boolean autoLogin;


}
