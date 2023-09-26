package kr.kh.spring.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {

	int or_num;
	int or_total;
	int or_price;
	int or_use_point;
	int or_save_point;
	String or_state;
	String or_me_id;
	Date or_up_date;
	

	public String getOr_up_date_str() {
		if(or_up_date == null) {
			return "";
		}
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return format.format(or_up_date);
	}
	
}
