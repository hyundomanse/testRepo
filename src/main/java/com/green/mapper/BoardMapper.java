package com.green.mapper;

import java.util.List;

import com.green.vo.BoardVO;

public interface BoardMapper {
	public List<BoardVO> getList(int mno);

	public void insert(BoardVO board);

	public BoardVO read(int bno);

	public int delete(int bno);

	public int update(BoardVO board);

	public int getMno(BoardVO board);

	public List<BoardVO> getListAll(int mno);

	public Long getMax();
}
