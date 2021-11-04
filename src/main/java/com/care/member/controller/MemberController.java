package com.care.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.member.dto.MemberDTO;
import com.care.member.service.MemberService;

@Controller
@RequestMapping("member")	//공통 사용 매핑 : 인터넷 서버 창에 경로 설정 → member/index, join, membership
public class MemberController {

	@Autowired
	MemberService ms; 
	
	public MemberController() {
		System.out.println("MemberController 실행");
	}
	
	@RequestMapping("index")
	public String main() {
		return "member/index";
	}
	
	@RequestMapping("join")
	public String join() {
		return "member/join";
	}
	
	@GetMapping("membership")
	public String membership(Model model/*jsp파일로 전달해주기 위한 매개변수*/) {
		ms.memberList(model);
		return "member/membership";
	}
	
	//회원가입 방법1
	@PostMapping("register")
	public String register(@RequestParam String id, @RequestParam String pwd, 
			/*들어오는 값과 변수명이 같을 시 ("값") 생략 가능 */ @RequestParam String name) {
		System.out.println("id : " + id);
		System.out.println("pwd : " + pwd);
		System.out.println("name : " + name);
		
		ms.register(id,pwd,name);
		
		//return "redirect:/member/index";	//redirect에서는 경로설정이 매우 중요하다. 또한 그 페이지의 관련 메소드도 실행해준다
		return "member/index";
	}
	
	//회원가입방법2
	@RequestMapping("register1")
	public String register1(HttpServletRequest req) {
		System.out.println("id(1): " + req.getParameter("id"));
		System.out.println("pwd(1) : " + req.getParameter("id"));
		System.out.println("name(1) : " + req.getParameter("id"));
		
		ms.register(req.getParameter("id"), req.getParameter("pwd"), req.getParameter("name"));
		
		return "redirect:index";
	}
	
	//회원가입방법3 : getter/setter를 활용한 방법
	@PostMapping("register2")
	public String register2(MemberDTO dto) {
		System.out.println("dto.id : " + dto.getId());
		System.out.println("dto.pwd : " + dto.getPwd());
		System.out.println("dto.name : " + dto.getName());
		
		return "redirect:index";
	}
	
	//Autowired한 ms의 값이 들어왔는지 확인
	@RequestMapping("test")
	public void test() {
		System.out.println("ms : " + ms);
		ms.test();
	}
}
