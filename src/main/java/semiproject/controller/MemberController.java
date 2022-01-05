package semiproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	// 클라이언트(join.jsp)에서 작성한 회원정보(아이디/비번/이름)를
	// 스프링 IOC가 MemberVO클래스에 자동으로 저장한 후
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
	
	// 로그인 처리
	// MemberVO -> MemberService -> MemberDAO
	// 클라이언트(login.jsp)에서 작성한 로그인정보(아이디/비번)를
	// 스프링 IOC가 MemberVO클래스에 자동으로 저장한 후
	// MemberService의 loginMember메서드로 전달
	// 로그인 성공시 : myinfo.jsp
	//				 스프링 IOC가 만들어준 세션 객체에 로그인 정보 저장
	// 로그인 실패시 : loginfail.jsp
	@PostMapping("/login")
	public String loginok(MemberVO mvo, HttpSession sess) {
		String returnPage = "redirect:/loginfail";
		
		if (msrv.loginMember(mvo)) {
			// 로그인 성공시 세션에 userid를 저장해 둠
			sess.setAttribute("userid", mvo.getUserid());
			returnPage = "redirect:/myinfo";
		}	
		return returnPage;
	}
	
	// 로그아웃 처리
	// 스프링 IOC가 만들어준 세션 객체에 로그인객체를 제거함
	@GetMapping("/logout")
	public String logout(HttpSession sess) {
		
		sess.invalidate(); // 세션 제거
		
		return "redirect:/index";
	}
	
	// 회원정보
	// 로그인한 회원의 모든 정보를 출력
	// 세션에 저장된 회원아이디로 member 테이블을 조회하고
	// 넘겨받은 회원정보를 Model 객체에 저장한 뒤
	// myinfo.jsp로 전달함
	@GetMapping("/myinfo")
	public String myinfo(HttpSession sess, Model model) {
		String returnPage = "redirect:/login";
		
		// 세션변수 userid가 null이 아니라면 myinfo 페이지로 이동
		if (sess.getAttribute("userid") != null) {
		// MemberVo mvo = msrv.readOneMember(sess);
		// model.addAttribute("m", mvo);

			model.addAttribute("m", msrv.readOneMember(sess));
		
			returnPage = "myinfo";
		}
		
		return returnPage;
	}
}
