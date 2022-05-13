package com.ssa.myapp5;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssa.domain.Board;
import com.ssa.mapper.BoardMapper;

@Controller
public class BoardController {
	
	/* 첫창- 로그인창*/
	@GetMapping("/")
	public String login() {
		return "login";
	}
	
	/* 회원가입 폼으로 이동 */
	@GetMapping("/register")
	public String register() {
		return "/register";
	}
	
	/* 메인으로 이동 */
	@GetMapping("/main")
	public String main() {
		return "/main";
	}
	
//	/* 상태확인 이동 */
//	@GetMapping("/state_check")
//	public String state_check() {
//		return "/state_check";
//	}
	
	/* 모니터링 이동 */
	@GetMapping("/monitoring")
	public String monitoring() {
		return "/monitoring";
	}
	
	/* 정보수정 이동 */
	@GetMapping("/change_info")
	public String change_info() {
		return "/change_info";
	}
	/* 공지사항 이동 */
	@GetMapping("/boardList")
	public String boardList() {
		return "/boardList";
	}
	/* 공지 작성 이동 */
	@GetMapping("/boardForm")
	public String boardInsert() {
		return "/boardForm";
	}
	/* 게시판 내용보기 이동 */
	@GetMapping("/boardContent")
	public String boardContent() {
		return "/boardContent";
	}
	/* 공지사항 수정 이동 */
	@GetMapping("/boardUpdate")
	public String boardUpdate() {
		return "/boardUpdate";
	}
	
	
	
//	게시판 컨트롤러
	
	@Autowired
	private BoardMapper mapper;
	
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		ArrayList<Board> list = mapper.boardList();
		
		model.addAttribute("list",list);
		
		return "boardList";
	}
	
	@GetMapping("/boardForm.do")
	public String boardFrom() {
		return "boardForm";
	}

	   @PostMapping("/boardInsert.do")
	   public String boardInsert(Board vo) {
	      mapper.boardInsert(vo);
	      
	      return "redirect:/boardList.do";
	   }
	   
	   @GetMapping("/boardContent.do")
	   public String boardContent(@RequestParam("idx") int idx, Model model) {
	      
	      Board vo = mapper.boardContent(idx);
	      model.addAttribute("vo",vo);
	      
	      return "boardContent";
	   }

	   @GetMapping("/boardDelete.do/{idx}")
	   public String boardDelete(@PathVariable int idx) {
	      
	      mapper.boardDelete(idx);
	      
	      return "redirect:/boardList.do";
	   }
	   
	   @RequestMapping(value="/boardUpdate.do/{idx}", method=RequestMethod.GET)
	   public String boardUpdate(@PathVariable int idx, Model model) {
	      
	      Board vo = mapper.boardContent(idx);
	      
	      model.addAttribute("vo",vo);
	      
	      
	      return "boardUpdate";
	   }
	   
	   @RequestMapping(value="/boardUpdate.do", method=RequestMethod.POST)
	   
	   public String boardUpdatePost(Board vo) {
	      
	      mapper.boardUpdate(vo);
	      
	      return "redirect:/boardList.do";
	   }

	
	

}
