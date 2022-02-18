package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.mapper.MemberMapper;
import com.green.vo.MemberVO;

import lombok.Setter;

@Service
public class MemberServiceImpl implements MemberService {
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	@Override
	public void register(MemberVO member) {
		System.out.println("서비스 멤버등록");
		mapper.insert(member);
	}

	@Override
	public MemberVO get(int mno) {
		System.out.println("서비스 멤버 한명 조회");
		return mapper.read(mno);
	}

	@Override
	public int modify(MemberVO member) {
		int modifyResult = mapper.update(member);
		return modifyResult;
	}

	@Override
	public boolean remove(int mno) {

		return mapper.delete(mno) == 1;
	}

	@Override
	public List<MemberVO> getList(MemberVO member) {
		return mapper.getList();
	}

	@Override
	public MemberVO login(MemberVO member) {
		System.out.println("서비스 로그인이들어오나" + member);
		return mapper.login(member);
	}
}
