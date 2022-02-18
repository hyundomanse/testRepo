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
public class BoardMapperTest {
	@Setter(onMethod_ = @Autowired)
	BoardMapper mapper;

	@Test
	public void insertTest() {
		MemberVO member = new MemberVO();

		for (int i = 1; i < 10; i++) {
			BoardVO board = new BoardVO();
			board.setBno((long) i);
			board.setMno(member.getMno());
			board.setTitle("어린왕자 텍스트" + i);
			board.setContent("어린왕자 텍스트입니다." + i);
			board.setWriter("writer" + i);
			mapper.insert(board);
		}
	}

	// @Test
	public void newBoardTest() {
		BoardVO board = new BoardVO();
		board.setMno(3);
		board.setTitle("완전테스트");
		board.setContent("컨텐트 테스트입니다.");
		board.setWriter("tttttttt");
		mapper.insert(board);
	}
}
