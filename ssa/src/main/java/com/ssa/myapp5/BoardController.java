package com.ssa.myapp5;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	/* 첫창- 로그인창*/
	@GetMapping("/")
	public String login() {
		return "login";
	}
	
	/* 회원가입 폼으로 이동 */
	@GetMapping("/register")
	public String register() {
		return "/register";
	}
	

	
	

}
