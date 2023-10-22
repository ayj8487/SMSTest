package com.oracle.smsTest.yjMemberService;

import java.util.List;

import com.oracle.smsTest.yjMemberDomain.Member;

public interface MemberService {
	
	// 회원 전체 조회 
	List<Member> memberList();
	// 아이디 중복검사 
	int idCon(String m_id);

}
