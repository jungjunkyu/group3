package kr.kh.spring.vo;

import lombok.Data;

@Data
public class OptionVO {
	
	int op_num;
	String op_name;
	int op_amount;
	String op_pr_code; // ProductVO 외래키

}
