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
	
	@Override
	public List<Member> memberList() {

		List<Member> memberList = session.selectList("memberList");
		
		return memberList;
	}

	@Override
	public boolean idCon(String m_id) {
		Integer idCon = session.selectOne("idCon",m_id);
		
		return idCon != null && idCon > 0;
	}

	
}
