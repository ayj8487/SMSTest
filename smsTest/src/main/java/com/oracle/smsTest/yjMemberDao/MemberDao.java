package com.oracle.smsTest.yjMemberDao;

import java.util.List;

import com.oracle.smsTest.yjMemberDomain.Member;

public interface MemberDao {

	List<Member> memberList();

	int idCon(String m_id);

}
