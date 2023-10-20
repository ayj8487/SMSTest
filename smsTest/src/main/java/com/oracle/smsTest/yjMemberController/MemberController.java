package com.oracle.smsTest.yjMemberController;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.oracle.smsTest.yjMemberDomain.Member;
import com.oracle.smsTest.yjMemberService.MemberService;

@Controller
public class MemberController {

	private final MemberService ms;

	public MemberController(MemberService ms) {
		this.ms = ms ;
	}
	
	// 회원 전체 조회 
	@GetMapping("/memberList")
	public String memberList(Model model) {
		
		List<Member> memberList = ms.memberList();
		
		model.addAttribute("memberList",memberList);
		
		return "member/memberList";
		
	}
}
