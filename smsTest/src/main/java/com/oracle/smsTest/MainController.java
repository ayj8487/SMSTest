package com.oracle.smsTest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@GetMapping("/main")
	public String Call() {
		
		return "main";
	}
	
    // 인증번호 입력
    @RequestMapping("/valiForm")
    public String valiForm() {
    	
    	return "valiForm";
    }
    
    // 사용자 정보 조회
    @RequestMapping("/myCon")
    public String myCon() {
    	
    	return "myCon";
    }
    // 회원가입 
    @RequestMapping("/joinForm")
    public String memberjoin() {
    	
    	return "member/joinForm";
    }
    
}
