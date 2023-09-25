package kr.kh.spring.vo;

import java.util.List;

import lombok.Data;

@Data
public class BoardVO {
	private int bo_num; 
	private String bo_name; 
	private int bo_price;
	private String bo_contents;
	
	private List<FileVO> fileVoList;
}
