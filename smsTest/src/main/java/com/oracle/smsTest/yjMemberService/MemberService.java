package com.oracle.smsTest.yjMemberService;

import java.util.List;

import com.oracle.smsTest.yjMemberDomain.Member;

public interface MemberService {
	
	// 회원 전체 조회 
	List<Member> memberList();

}
