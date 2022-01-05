package semiproject.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import semiproject.vo.MemberVO;

@Repository("mdao")
public class MemberDAOImpl implements MemberDAO {

	// 스프링 IOC에 의해 DI 되는 jdbc 빈 선언
	// root-context.xml에 정의
	@Autowired JdbcTemplate jdbcTemplate;
	
	// util:properties 태그로 정의한 객체의 변수 불러오기(root-context.xml)
	@Value("#{sql['newmember']}") private String newmember;
	@Value("#{sql['loginmember']}") private String loginmember;
	@Value("#{sql['selectOneMember']}") private String selectOneMember;
	
	// 입력한 회원정보를 member 테이블에 저장
	@Override
	public int insertMember(MemberVO mvo) {
		Object[] params = new Object[] {
			mvo.getUserid(), mvo.getPasswd(), mvo.getName()
		};
		
		// insert, update, delete 실행 시 update 메서드 사용
		// jdbcTemplate.update(질의문, 매개변수)
		return jdbcTemplate.update(newmember, params);
	}

	// 입력한 로그인 정보가 member 테이블에 존재하는지 알아봄
	@Override
	public int selectLoginMember(MemberVO mvo) {
		Object[] params = new Object[] {
				mvo.getUserid(), mvo.getPasswd() };

		// count함수를 사용하는 select문 실행 시 사용
		// jdbcTemplate.queryForObject(질의문, 매개변수, 결과유형)
		return jdbcTemplate.queryForObject(loginmember, params, Integer.class);
	}

	// 로그인한 회원아이디로 회원정보 조회하기
//	@Override
//	public MemberVO selectOneMember(String userid) {
//		Object[] params = new Object[] { userid };
//		
//		// 결과집합을 처리하는 콜백 메서드 등록
//		// select 조회후 ResultSet이 생성되면
//		// 스프링 IOC가 mapper 클래스를 호출해서 결과객체를 생성함
//		RowMapper<MemberVO> mapper = new MemberOneMapper();
//		
//		// 하나의 레코드만 조회하는 select문 실행 시 사용
//		// jdbcTemplate.queryForObject(질의문, 매개변수, 매퍼)
//		return jdbcTemplate.queryForObject(selectOneMember, params, mapper);
//	}
	
	// 회원정보 조회시 사용하는 mapper 클래스 정의
	private class MemberOneMapper implements RowMapper<MemberVO> {

		@Override
		public MemberVO mapRow(ResultSet rs, int num) throws SQLException {
			
			MemberVO mvo = new MemberVO();
			
			mvo.setUserid(rs.getString("userid"));
			mvo.setName(rs.getString("name"));
			mvo.setEmail(rs.getString("email"));
			mvo.setRegdate(rs.getString("regdate"));
			
			return mvo;
		}
		
	}

	@Override
	public MemberVO selectOneMember(String userid) {
		Object[] params = new Object[] { userid };
		
		return jdbcTemplate.queryForObject(selectOneMember, params,
				(rs, count) -> new MemberVO(    //mapper클래스 대신 람다식 사용
						rs.getString("userid"),
						rs.getString("email"),
						rs.getString("name"),
						rs.getString("regdate")	)
				);
	}

}
