package com.ssa.domain;

import lombok.Data;

@Data
public class UserVO {
	
	private String user_fs_location; // 소방서위치
	private String user_fs; // 소속소방서
	private String user_id; // 아이디
	private String user_pw;  // 비밀번호
	private String user_name; // 이름
	private String user_birthdate; //생일
	private String user_address; //주소
	private String user_address2; //상세주소
	private String user_gender; // 성별
	private String user_bloodtype; // 혈액형
	
	
}



