package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.mapper.BoardAttachMapper;
import com.green.mapper.BoardMapper;
import com.green.vo.AttachFileDTO;
import com.green.vo.BoardAttachVO;
import com.green.vo.BoardVO;

import lombok.Setter;

@Service
public class BoardServiceImpl implements BoardService {
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;

	@Setter(onMethod_ = @Autowired)
	private BoardAttachMapper attachMapper;

	@Override
	public List<BoardVO> getList(int mno) {
		return mapper.getList(mno);

	}

	@Override
	public void register(BoardVO board, AttachFileDTO fileDto) {
		System.out.println("서비스 멤버등록");

		mapper.insert(board);
		fileDto.setBno(mapper.getMax());
		board.setAttachList(fileDto);
		attachMapper.insert(fileDto);

	};

	@Override
	public BoardVO get(int bno) {
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {

		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(int bno) {
		return mapper.delete(bno) == 1;
	}

	@Override
	public int getMno(BoardVO board) {

		return mapper.getMno(board);
	}

	@Override
	public List<BoardVO> getListAll(int mno) {
		return mapper.getListAll(mno);
	}

	@Override
	public BoardAttachVO getAttachList(Long bno) {
		
		return attachMapper.findByBno(bno);
	}

	

//	@Override
//	public List<BoardAttachVO> getAttachList(Long bno) {
//		System.out.println("첨부파일 목록 가져오는 서비스 "+bno);
//		return attachMapper.findByBno(bno);
//	}

}
