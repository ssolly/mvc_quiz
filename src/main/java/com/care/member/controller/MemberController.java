package com.care.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	public MemberController() {
		System.out.println("MemberController 실행");
	}
	
	@RequestMapping("main")
	public String main() {
		return "member/main";
	}
	
	@RequestMapping("join")
	public String join() {
		return "member/join";
	}
}
