package semiproject.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import semiproject.vo.MemberVO;

@Repository("mdao")
public class MemberDAOImpl implements MemberDAO {

	// 스프링 IOC에 의해 DI 되는 jdbc 빈 선언
	// root-context.xml에 정의
	@Autowired JdbcTemplate jdbcTemplate;
	
	// util:properties 태그로 정의한 객체의 변수 불러오기(root-context.xml)
	@Value("#{sql['newmember']}") private String newmember;
	
	@Override
	public int insertMember(MemberVO mvo) {
		Object[] params = new Object[] {
			mvo.getUserid(), mvo.getPasswd(), mvo.getName()
		};
		
		return jdbcTemplate.update(newmember, params);
	}

}
