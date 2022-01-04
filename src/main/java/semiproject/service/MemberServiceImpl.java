package semiproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import semiproject.dao.MemberDAO;
import semiproject.vo.MemberVO;

@Service("msrv")
public class MemberServiceImpl implements MemberService{

	// 스프링 IOC에 의해 DI 되는 DAO 빈 선언
	// MemberDAOImpl에 정의
	@Autowired MemberDAO mdao;
	
	// 클라이언트에서 넘겨준 회원정보를 
	// MemberDAO의 insertMember메서드로 전달
	@Override
	public void joinMember(MemberVO mvo) {
		if(mdao.insertMember(mvo) > 0)
			System.out.println("회원가입완료!!");
	}

}
