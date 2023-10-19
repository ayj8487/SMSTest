package com.oracle.smsTest.yjMemberController;

import org.springframework.stereotype.Controller;

import com.oracle.smsTest.yjMemberService.MemberService;

@Controller
public class MemberController {

	private final MemberService ms;

	public MemberController(MemberService ms) {
		this.ms = ms ;
	}
}
