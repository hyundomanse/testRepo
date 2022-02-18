package com.green.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor

public class BoardVO {

	private Long bno;
	private int mno;
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	private Date updateDate;
	
	private AttachFileDTO attachList; //첨부 파일 저장을 위한 멤버변수 하나의 파일만 저장가능
}
