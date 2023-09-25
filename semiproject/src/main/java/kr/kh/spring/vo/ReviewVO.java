package kr.kh.spring.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ReviewVO {
	private int re_num;
	private String re_contents; 
	private int re_star;
	private String re_image;
	private String re_me_id;
	private int re_op_num;
	
}