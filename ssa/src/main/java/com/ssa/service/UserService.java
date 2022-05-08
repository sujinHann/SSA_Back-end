package com.ssa.service;

import org.springframework.stereotype.Service;

import com.ssa.domain.UserVO;

@Service
public interface UserService {
	
	
	// 로그인
	public UserVO UserLogin(UserVO vo);

	// 회원가입
	public void UserJoin(UserVO vo);

	// 아이디 중복체크
	public int idCheck(String id);
}
