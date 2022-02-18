package com.green.mapper;

import java.util.List;

import com.green.vo.AttachFileDTO;
import com.green.vo.BoardAttachVO;

public interface BoardAttachMapper {

	public void insert(AttachFileDTO vo);

	public BoardAttachVO findByBno(Long bno);

}
