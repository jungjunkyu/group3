package kr.kh.spring.vo;

import lombok.Data;

@Data
public class OptionVO {
	
	int op_num;
	String op_pr_code;
	String op_color;
	int op_amount;
	int op_size;
	// ProductVO 외래키

}
