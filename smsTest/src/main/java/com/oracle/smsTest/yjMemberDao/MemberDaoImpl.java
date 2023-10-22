package com.oracle.smsTest.yjMemberDao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oracle.smsTest.yjMemberDomain.Member;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberDaoImpl implements MemberDao{
	
	private final SqlSession session;
	// 회원 전체 조회
	@Override
	public List<Member> memberList() {

		List<Member> memberList = session.selectList("memberList");
		
		return memberList;
	}
	// ID 중복 검사
	@Override
	public int idCon(String m_id) {
		Integer idCon = session.selectOne("idCon",m_id);
		
		return idCon;
	}
	// 회원 가입
	@Override
	public int joinResult(Member member) {
		int joinResult = session.insert("joinResult",member);
	
		return joinResult;
	}

	
}
