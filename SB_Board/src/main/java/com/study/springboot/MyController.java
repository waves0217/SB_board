package com.study.springboot;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.springboot.dao.IBoardDao;
import com.study.springboot.dto.BoardDto;

@Controller
public class MyController {

	@Autowired
	IBoardDao boardDao;
	
	@RequestMapping("/")
	//@ResponseBody
	public String root() {
		//return "root() 함수 호출테스트";
		return "redirect:listForm";
	}
	
	
	@RequestMapping("/listForm")
	public String listForm( Model model) {
		List<BoardDto> list = boardDao.list();
		
		model.addAttribute("list",list);
		System.out.println("확인" + list);
		
		return "listForm";
	}
	
	@RequestMapping("/writeForm")
	public String writeForm() {
		
		return "writeForm";
	}
	
	@RequestMapping("/writeAction")
	public String writeAction(@RequestParam("board_name") String board_name,
								@RequestParam("board_title") String board_title,
								@RequestParam("board_content" ) String board_content) {

		int result = boardDao.write(board_name,board_title,board_content);
		System.out.println("result값 : " + result);
		if(result == 1) {
			System.out.println("글쓰기 성공");
			return "redirect:listForm";
		} else {
			System.out.println("글쓰기 실패");
			return "redirect:listForm";
		}
		
	}
	
	@RequestMapping("/contentForm")
	public String contentForm(@RequestParam("board_idx") String board_idx, Model model) {
		
		BoardDto dto = boardDao.viewDto(board_idx);
		System.out.println("dto : " + dto);
		model.addAttribute("dto", dto);
		
		return "contentForm";
	}
	
}
