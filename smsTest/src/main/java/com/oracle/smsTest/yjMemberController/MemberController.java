package com.oracle.smsTest.yjMemberController;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oracle.smsTest.yjMemberDomain.Member;
import com.oracle.smsTest.yjMemberService.MemberService;

@Controller
public class MemberController {

	private final MemberService ms;

	public MemberController(MemberService ms) {
		this.ms = ms;
	}

	// 회원 전체 조회
	@GetMapping("/memberList")
	public String memberList(Model model) {

		List<Member> memberList = ms.memberList();

		model.addAttribute("memberList", memberList);

		return "member/memberList";

	}

	// 회원가입 폼
	@GetMapping("/memberjoin")
	public String memberjoin() {

		return "member/memberjoin";
	}

	// 아이디 중복검사
	@GetMapping("/idConfirm")
	public String idConfirm(@RequestParam String m_id, Model model) {

		System.out.println("m_id ->" + m_id);

		boolean idConOk = ms.idCon(m_id);

		if (idConOk) {
			// 아이디가 이미 존재하는 경우
			model.addAttribute("idConOk", "exist");
		} else {
			// 아이디가 존재하지 않는 경우
			model.addAttribute("idConOk", "available");
		}

		return "member/idConfirm";
	}
}
