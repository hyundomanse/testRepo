package com.green.service;

import java.util.List;

import com.green.vo.MemberVO;

public interface MemberService {
	public void register(MemberVO member);

	public MemberVO login(MemberVO member);

	public MemberVO get(int mno);

	public int modify(MemberVO member);

	public boolean remove(int mno);

	public List<MemberVO> getList(MemberVO member);
}
