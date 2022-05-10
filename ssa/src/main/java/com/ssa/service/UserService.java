package com.ssa.service;

import java.util.ArrayList;

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
	
	// 대원정보수정
	public void updateInfo(UserVO vo);
	
	// 대원리스트
	public ArrayList<UserVO> UserList();
}
