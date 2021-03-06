package com.ssa.myapp5;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssa.domain.UserVO;
import com.ssa.domain.UserVO2;
import com.ssa.mapper.UserMapper;
import com.ssa.service.UserServiceImple;



@Controller
public class UserController {

	@Autowired
	private UserServiceImple UserService;
	@Autowired
	private UserMapper mapper;
	
	


	/* 로그인 후 메인으로 이동*/
	@PostMapping("login")
	public String Login(UserVO vo, HttpSession session) {
		UserVO uvo = UserService.UserLogin(vo);
		System.out.println("로그인 " + uvo);

		if (uvo != null) {
			session.setAttribute("LoginVo", uvo);
		}else {
			System.out.println("로그인다시해라");
			return "login";
		}

		return "main";
	}
	
	/* 회원 가입 후 로그인창으로 이동*/
	@PostMapping("Join")
	public String Join(UserVO vo) {
		
		try {
			UserService.UserJoin(vo);
			System.out.println("회원가입 완료");
			System.out.println(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "login";
	}

	
	/* 아이디 중복체크*/
	@PostMapping("idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("user_id") String id) {	
		int cnt = UserService.idCheck(id);
		
		return cnt;
		
}
	/* 로그아웃 후 세션 무효화*/
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
		
	}
	
	//대원관리
	@RequestMapping("/user_info")
	public String user_info(Model model) {
		ArrayList<UserVO> User_list = UserService.UserList();
		model.addAttribute("User_list", User_list);			
		return "user_info";
	}
	
	
	@RequestMapping(value="/change_info.do", method=RequestMethod.POST)	
	public String update_info(UserVO2 vo) {
		mapper.change_info(vo);
		System.out.println("수정 : " + vo);
		return "redirect:/";
	}
	
	//상태확인
	@RequestMapping("/state_check")
	public String state_check(Model model) {
		ArrayList<UserVO> state_list = UserService.statelist();
		model.addAttribute("state_list", state_list);			
		return "state_check";
	}
}
