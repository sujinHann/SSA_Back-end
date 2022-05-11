package com.ssa.domain;

import lombok.Data;

@Data
public class UserVO2 {
	
	private String user_addressRegion; // 소방서위치1
	private String user_addressDo; // 소방서위치2
	private String user_addressSiGunGu; // 소방서위치3
	private String user_fs; // 소속소방서
	private String user_id; // 아이디
	private String user_pw;  // 현재비밀번호
	private String user_pwCheck1;  // 변경비밀번호
	private String user_pwCheck2;  // 변경비밀번호확인
	private String user_name; // 이름
	private String user_address; //주소
	private String user_address2; //상세주소
	
	
}



