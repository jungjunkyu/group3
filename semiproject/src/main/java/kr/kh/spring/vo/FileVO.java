package kr.kh.spring.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data

public class FileVO {
	int fi_num;
	String fi_name;
	String fi_pr_code;
	String fi_ori_name;
	
	public FileVO(String fi_pr_code, String fi_name, String fi_ori_name){
		this.fi_pr_code = fi_pr_code;
		this.fi_name = fi_name;
		this.fi_ori_name = fi_ori_name;
	}
	
	
}
