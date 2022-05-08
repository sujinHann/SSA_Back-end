package com.ssa.service;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssa.domain.UserVO;
import com.ssa.mapper.UserMapper;

@Service
public class UserServiceImple implements UserService {

	@Autowired
	private UserMapper mapper;

	// 로그인 매퍼로 접근
	@Override
	public UserVO UserLogin(UserVO vo) {
		UserVO uvo = mapper.UserLogin(vo);

		return uvo;
	}

	// 회원가입 매퍼로 접근
	@Override
	public void UserJoin(UserVO vo) {
		mapper.UserLogin(vo);

	}
	
	// 아이디 중복체크 매퍼 접근
	@Override
	public int idCheck(String id) {
		int cnt = mapper.idCheck(id);
		System.out.println("cnt: " + cnt);
		return cnt;
	}



}
