package com.green.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.green.vo.BoardVO;
import com.green.vo.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTest {
	@Setter(onMethod_ = @Autowired)
	MemberMapper mapper;

	@Setter(onMethod_ = @Autowired)
	BoardMapper boardmapper;

	// @Test
	public void insertTest() {
		for (int i = 0; i < 11; i++) {
			MemberVO member = new MemberVO();
			member.setName("홍길동" + i);
			member.setId("gildong" + i);
			member.setPassword("123" + i);
			member.setEmail("gildong" + i + "@naver.com");
			member.setMobileNumber("010-0000-000" + i);
			member.setNickName("동에번쩍" + i);
			mapper.insert(member);

		}
	}

	@Test
	public void insertBoard() {
		for (int j = 1; j < 20; j++) {
			BoardVO board = new BoardVO();
			board.setBno((long) j);
			board.setMno((int) ((1 + Math.random() * 10)));
			board.setTitle("어린왕자 텍스트" + j);
			board.setContent("어린왕자 텍스트입니다." + j);
			board.setWriter("writer" + j);
			boardmapper.insert(board);
		}
	}

	// @Test
	public void loginTest() {
		MemberVO vo = new MemberVO();
		vo.setId("aa");
		vo.setPassword("1234");
		MemberVO vo2 = mapper.login(vo);
		mapper.login(vo2);
	}

}
