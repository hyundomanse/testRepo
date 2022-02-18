package com.green.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.service.BoardService;
import com.green.service.MemberService;
import com.green.vo.AttachFileDTO;
import com.green.vo.BoardVO;
import com.green.vo.MemberVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board/*")
@Slf4j
public class BoardController {
	@Setter(onMethod_ = @Autowired)
	private MemberService mservice;

	@Setter(onMethod_ = @Autowired)
	private BoardService bservice;

	@GetMapping("/index")
	public String indexTest(HttpSession session) {
		MemberVO vo = (MemberVO)session.getAttribute("res");
		System.out.println("index페이지 vo "+vo);
		
		if(vo!=null) {
			return "board/indexlogin";
		} else {
			return "board/index";
		}
		
	}

	@GetMapping("/aboutUs")
	public void aboutUs() {
	}

	// 로그인
	@GetMapping("/login")
	public String login() {
		return "board/login";
	}

	@PostMapping("/login")
	public String loginPost(MemberVO vo, Model model, HttpServletRequest request) {
		int yes = 0;
		String result = "";
		
		mservice.login(vo);
		
		try {
			if (vo.getId().equals(mservice.login(vo).getId())
					& vo.getPassword().equals(mservice.login(vo).getPassword())) {
				
				HttpSession session = request.getSession();
				System.out.println("세션 아이디 : " + session.getId());
				
				session.setAttribute("res", vo);
				System.out.println("로그인정보 : "+session.getAttribute("res"));
				
				yes = mservice.login(vo).getMno(); // yes가 로그인한 mno값 저장
				result = String.format("redirect:mypage?mno=%d", yes);
				
			}
		} catch (Exception e) {
			result = "redirect:loginFail";
		}
		return result;
	}

	@GetMapping("/loginFail")
	public void loginFail() {
	}

	@GetMapping("/signUp")
	public void signUp() {
	}

	@PostMapping("/signUp")
	public String signUp(MemberVO vo) {
		System.out.println(vo);
		mservice.register(vo);
		return "redirect:login";// controller의 login으로 이동
	}

	@GetMapping("/findPage")
	public void findPage() {
	}

	// 게시글 읽기
	@GetMapping("/read")
	public void read(@RequestParam("bno") int bno, BoardVO board, Model model) {
		model.addAttribute("list", bservice.get(bno));
	}

	@GetMapping("/editor")
	public void editorTest(@RequestParam("bno") int bno, BoardVO board, Model model) {
		model.addAttribute("board", bservice.get(bno));
	}

//	@PostMapping("/editor")
//	public String editorPost(BoardVO board) {
//		bservice.register(board);
//	return "/board/mypage";		
//	}

	@GetMapping("/mypage")
	public void mypage(@RequestParam("mno") int mno, BoardVO board, Model model) {
		model.addAttribute("list", bservice.getList(mno));
		model.addAttribute("board", mservice.get(mno));
	}
	

	// 수정하기
	@GetMapping("/boardmodify")
	public void boardmodify(@RequestParam("bno") int bno, @RequestParam("mno") int mno, BoardVO board, Model model) {
		model.addAttribute("board", bservice.get(mno));
	}

	@PostMapping("/boardmodify")
	public String modify(BoardVO board, @RequestParam("mno") int mno, Model model, RedirectAttributes rttr) {
		int tempMno = 0;
		String resultPage = "";
		if (bservice.modify(board))
			rttr.addFlashAttribute("result", "success");
		tempMno = mservice.get(mno).getMno();
		resultPage = String.format("redirect:mypage?mno=%d", tempMno);
		return resultPage;
	}

	// 새글 쓰기
	@GetMapping("/neweditor")
	public String newEditor(int mno, Model model) {
		System.out.println("neweditor : " + mno);
		MemberVO vo = mservice.get(mno);
		model.addAttribute("vo", vo);
		return "board/neweditor";
	}

	@PostMapping("/neweditor")
	public String newEditorPost(BoardVO board, RedirectAttributes rttr, AttachFileDTO fileDto) {
		int tempMno = 0;
		String resultPage = "";
		System.out.println("새 글쓰기 컨트롤러  post  board : " + board + "fileDto  " + fileDto);

		board.setAttachList(fileDto);
		bservice.register(board, fileDto);
		tempMno = mservice.get(board.getMno()).getMno();
		rttr.addAttribute("result", board.getBno());
		resultPage = String.format("redirect:mypage?mno=%d", tempMno);
		return resultPage;
	}

	// 지우기
	@PostMapping("/remove")
	public String remove(@RequestParam("mno") int mno, RedirectAttributes rttr) {
		int tempMno = 0;
		String resultPage = "";
		if (mservice.remove(mno)) {
			rttr.addFlashAttribute("result", "success");
		}
		resultPage = String.format("redirect:mypage?mno=%d", tempMno);
		return resultPage;
	}
}
