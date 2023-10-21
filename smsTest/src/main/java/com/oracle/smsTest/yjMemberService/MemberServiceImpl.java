package com.oracle.smsTest.yjMemberService;

import java.util.List;

import org.springframework.stereotype.Service;

import com.oracle.smsTest.yjMemberDao.MemberDao;
import com.oracle.smsTest.yjMemberDomain.Member;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService{

	private final MemberDao md;
	
	@Override
	public List<Member> memberList() {
		List<Member> memberList = md.memberList();
		
		return memberList;
	}

	@Override
	public boolean idCon(String m_id) {
		boolean idConOk = md.idCon(m_id);
		
		return idConOk;
	}

	
}
