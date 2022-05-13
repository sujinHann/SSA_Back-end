package com.ssa.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.ssa.domain.Shoulder;


@Mapper
public interface ShoulderMapper {
	
	
	// 사용자 이름
	public Shoulder ShoulderData(String user_name);
	
	

}
