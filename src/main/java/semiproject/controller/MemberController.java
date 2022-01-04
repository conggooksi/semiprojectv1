package semiproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import semiproject.service.MemberService;
import semiproject.vo.MemberVO;

@Controller
public class MemberController {

	// 스프링 IOC에 의해 DI 되는 service 빈 선언
	// MemberServiceImple에 정의
	@Autowired MemberService msrv;
	
	// 회원가입
	@GetMapping("/join")
	public String join() {
		
		return "join";
	}
	
	// 회원가입 처리
	// MemberVO -> MemberService -> MemberDAO
	// 클라이언트에서 작성한 회원정보를
	// MemberService의 joinMember메서드로 전달
	@PostMapping("/join")
	public String joinok(MemberVO mvo) {
		
		msrv.joinMember(mvo);
		
		// 가입이 완료되면 login 페이지로 이동
		return "redirect:/login";
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
