package com.green.mapper;

import java.util.List;

import com.green.vo.MemberVO;

public interface MemberMapper {
	public List<MemberVO> getList();

	public void insert(MemberVO member);

	public void insertSelectKey(MemberVO member);

	public MemberVO read(int mno);

	public int delete(int mno);

	public int update(MemberVO member);

	public MemberVO login(MemberVO vo);
}
