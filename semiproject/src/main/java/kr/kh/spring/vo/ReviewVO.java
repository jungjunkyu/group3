package kr.kh.spring.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ReviewVO {
	private int re_num;
	private String re_content; 
	private String re_image; 
}
