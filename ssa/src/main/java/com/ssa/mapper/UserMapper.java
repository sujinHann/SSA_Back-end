package com.ssa.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.ssa.domain.UserVO;


@Mapper
public interface UserMapper {

	//로그인
	public UserVO UserLogin(UserVO vo);
	
	//회원가입
	@Insert("")
	public void UserJoin(UserVO vo);
	
	// 아이디 중복체크
	public int idCheck(String id);
	
}
