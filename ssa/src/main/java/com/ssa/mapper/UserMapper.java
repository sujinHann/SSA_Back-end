package com.ssa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.ssa.domain.UserVO;
import com.ssa.domain.UserVO2;


@Mapper
public interface UserMapper {

	//로그인
	public UserVO UserLogin(UserVO vo);
	
	//회원가입
	public void UserJoin(UserVO vo);
	
	// 아이디 중복체크
	public int idCheck(String id);
	
	//회원정보 수정
	public void change_info(UserVO2 vo);
	
	// 대원리스트
	public ArrayList<UserVO> UserList();
	
}
