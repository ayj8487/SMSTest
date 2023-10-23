package com.oracle.smsTest.yjMemberController;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
		
		int idResult = ms.idCon(m_id);
		
		System.out.println(idResult);
		
		if(idResult > 0) {
			model.addAttribute("no", "중복된 ID 입니다. 다시 입력해 주세요.");

		}else {
			model.addAttribute("m_id",m_id);
			model.addAttribute("ok", m_id + " 는 사용 할 수 있는 ID 입니다.");
		}

		return "member/memberjoin";
	}
	
	
	// 회원 가입 
	// @RequestParam -> 특정 파라미터
	// @ModelAttribute -> 객체 바인딩 
	@PostMapping("/memberJoinAction")
	public String memberJoinAction(@RequestParam("m_email1") String m_email1, 
									@RequestParam("m_email") String m_email, 
									
									@RequestParam("m_ph1") String m_ph1,
									@RequestParam("m_ph2") String m_ph2,
									@RequestParam("m_ph3") String m_ph3,
									
									@RequestParam("m_birth") String m_birth,
									@RequestParam("m_birth1") String m_birth1,
									
									@RequestParam("m_addr1") String m_addr1,
									@RequestParam("m_addr2") String m_addr2,
									@RequestParam("m_addr") String m_addr,
									
									@ModelAttribute Member member, Model model) {

			
		
		System.out.println("memberJoinAction Start ...");
		
		member.setM_email(m_email1+"@"+m_email);
		member.setM_ph(m_ph1+"-"+m_ph2+"-"+m_ph3);
		member.setM_birth(m_birth+m_birth1);
		member.setM_addr("("+m_addr1+") " + m_addr2 + " " + m_addr );
		
		
		String m_emailAll = member.getM_email();
		String m_phAll = member.getM_ph();
		String m_birthAll = member.getM_birth();
		String m_addrAll = member.getM_addr();
		
		System.out.println("m_emailAll ->"+ m_emailAll);
		System.out.println("m_phAll ->"+ m_phAll);
		System.out.println("m_birthAll ->" + m_birthAll);
		System.out.println("m_addrAll ->" + m_addrAll);
		
		int joinResult = ms.joinResult(member);
		
		model.addAttribute("joinResult",joinResult);
		
		return "member/joinOk";
	}
}
