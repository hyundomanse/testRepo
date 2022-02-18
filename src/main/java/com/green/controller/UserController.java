package com.green.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jdk.internal.org.jline.utils.Log;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user/*")
public class UserController {
	// 로그인 페이지
	@RequestMapping("loginPage")
	public String userLoginPage() {
		return "/user/UserLogin";
	}
	
	@RequestMapping("login")
	public String userLogin() {
		return "/user/UserLogin2";
	}
	
	
	@RequestMapping("login2")
	public String userLogin2() {
		Map<String, Object> map = new HashMap<>();
		map.put("t1", "v1");	
		log.debug("check ::: {}", map);
		log.info("체킃-ㅔ크");
		System.out.println(" dmddkdkdkdk ㅡ아아아아아");
		return "/user/signupPage";
	}
	

	@RequestMapping("signupPage")
	public String userSignupPage() {
		return "/user/signupPage";
	}

	@RequestMapping("/findPage")
	public String findPage() {
		return "/user/findPage";
	}
}
