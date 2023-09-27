package kr.kh.spring.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

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
	private int re_bo_num;
	private Date re_time;
	
	public String getRe_time_str() {
		if(re_time == null) {
			return "";
		}
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return format.format(re_time);
	}
}