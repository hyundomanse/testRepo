package com.green.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.service.BoardService;
import com.green.vo.BoardAttachVO;

import lombok.Setter;

@Controller
public class ImageController {
	@Setter(onMethod_=@Autowired)
	private BoardService bservise;
	
	@RequestMapping("a")
	public String imageTest(Model model, Long bno) {
		model.addAttribute("bno",bno);
		return "a";
	}
	
	@GetMapping(value="/getAttachList", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<BoardAttachVO> getAttachList(Long bno){
		System.out.println("이미지 정보가 잘 들어오나요 "+bno);
		
		//문제) 아래 getAttachList를 만들어라, 매개변수(bno)를 전달하고 그에 해당하는 vo(AttachFileDTO)=> file_tbl의 정보를
		//가져와서 mapper 테스트와 여기를 채워
		BoardAttachVO vo = bservise.getAttachList(bno);
		System.out.println(vo);
		
		return new ResponseEntity<>(vo, HttpStatus.OK);
	}

}
