package com.ssa.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssa.domain.UserVO;
import com.ssa.domain.UserVO2;
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
		mapper.UserJoin(vo);

	}

	// 아이디 중복체크 매퍼 접근
	@Override
	public int idCheck(String id) {
		int cnt = mapper.idCheck(id);
		System.out.println("cnt: " + cnt);
		return cnt;
	}

	@Override
	public void change_info(UserVO2 vo) {
		mapper.change_info(vo);

	}

	// 대원리스트 조회
	@Override
	public ArrayList<UserVO> UserList() {
		ArrayList<UserVO> list = mapper.UserList();
		System.out.println("Service : " + list);
		return list;
	}

	// 상태확인 조회
	@Override
	public ArrayList<UserVO> statelist() {
		ArrayList<UserVO> list = mapper.statelist();
		System.out.println("Service : " + list);
		return list;
	}

}
