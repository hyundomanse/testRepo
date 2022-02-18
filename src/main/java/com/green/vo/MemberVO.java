package com.green.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class MemberVO {

	private int mno;
//	private int bno;
	private String name;
	private String id;
	private String password;
	private String email;
	private String mobileNumber;
	private String nickName;
	private Date regDate;
	private Date updateDate;
}
