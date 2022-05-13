package com.ssa.myapp5;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ssa.domain.Shoulder;
import com.ssa.mapper.ShoulderMapper;

@Controller
public class ShoulderController {

	@Autowired
	private ShoulderMapper mapper;
	
	
	@RequestMapping("/Shoulder.do")
	public Shoulder ShoulderData(Shoulder sd) {
		mapper.ShoulderData(sd);
		
		return "Shoulder";
		
	}
	
	
	
}
