package com.green.service;

import java.util.List;

import com.green.vo.AttachFileDTO;
import com.green.vo.BoardAttachVO;
import com.green.vo.BoardVO;

public interface BoardService {
	public void register(BoardVO board, AttachFileDTO fileDto); //

	public BoardVO get(int bno);

	public boolean modify(BoardVO board);

	public boolean remove(int mno);

	public List<BoardVO> getList(int mno);

	public int getMno(BoardVO board);

	public List<BoardVO> getListAll(int mno);

	public BoardAttachVO getAttachList(Long bno);

	// public List<BoardAttachVO> getAttachList(Long bno);
}
