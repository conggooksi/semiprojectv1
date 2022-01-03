package semiproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {

	// 회원가입
	@GetMapping("/join")
	public String join() {
		
		return "join";
	}
	
	// 로그인
	@GetMapping("/login")
	public String login() {
		
		return "login";
	}
	
	// 회원정보
	@GetMapping("/myinfo")
	public String myinfo() {
		
		return "myinfo";
	}
}
