package com.ssa.myapp5;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	
	/* 메인으로 이동 */
	@GetMapping("/main")
	public String main() {
		return "/main";
	}
	
//	/* 상태확인 이동 */
//	@GetMapping("/state_check")
//	public String state_check() {
//		return "/state_check";
//	}
	
	/* 모니터링 이동 */
	@GetMapping("/monitoring")
	public String monitoring() {
		return "/monitoring";
	}
	
	/* 정보수정 이동 */
	@GetMapping("/change_info")
	public String change_info() {
		return "/change_info";
	}
	

	

	
	

}
