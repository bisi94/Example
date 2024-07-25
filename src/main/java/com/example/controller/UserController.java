package com.example.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.model.User;
import com.example.model.UserVO;
import com.example.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService; 
	
	@RequestMapping("/user")
	public String userLogin(HttpServletRequest request, HttpServletResponse response, Model model,
			@ModelAttribute("user") UserVO userVO) {
		
		UserVO userInfo = this.userService.loginCheck(userVO);
		
		if(userInfo == null) {
			model.addAttribute("loginCheck", "N");
			return "login/login";
		}else {
			HttpSession ses = request.getSession(); //세션은 만들었는데 어캐쓰는지를 아직 모름..ㅎ 슬슬해보자
			
			model.addAttribute("userInfo", userInfo);
			return "main/main";
		}
	}
	
	@RequestMapping("/ajax/loginCheck")
	public String loginCheck(HttpServletRequest request, HttpServletResponse response, Model model,
			@ModelAttribute("user") UserVO userVO) {
		
		UserVO userInfo = this.userService.loginCheck(userVO);
		
		model.addAttribute("userInfo", userInfo);
		return "main/main";
	}
	
	@RequestMapping("/main")
	public String main(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("main으로 이동");
		
		return "main/main";
	}
	
	
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("login으로 이동");
		return "login/login";
	}
	
	@RequestMapping("/join")
	public String join(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("join으로 이동");
		return "join/join";
	}
	
	@RequestMapping("/move")
	public String move(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "move";
	}
	
	@RequestMapping("/joinConfirm")
	public String joinConfirm(HttpServletRequest request, HttpServletResponse response, Model model,
			@ModelAttribute("user") UserVO userVO) {
		System.out.println("userId : "+userVO.getUserId());
		System.out.println("password : "+userVO.getPassword());
		System.out.println("userName : "+userVO.getUserName());
		
		this.userService.joinUser(userVO);
		
		System.out.println("가입완료");
		
		return "join/joinConfirm";
	}
	
	@RequestMapping(value="/ajax/idDupCheck", produces="application/text; charset=utf8")
	@ResponseBody
	public String idDupCheck(HttpServletRequest request, HttpServletResponse response, Model model,
			@ModelAttribute("user") UserVO userVO) {
		
		String message = "";
		
		//사용자가 입력한 아이디
		String beCheckedId = userVO.getUserId();
		System.out.println("beCheckedId : "+beCheckedId);
		
		//아이디 존재여부 확인
		int idDupChk = this.userService.idDupCheck(beCheckedId);
		
		//이미 사용중인 아이디이면
		if(idDupChk > 0) {
//			message = "already used ID.";
			message = "이미 사용중인 아이디 입니다.";
//			message = "{\"message\": \"이미 사용중인 아이디 입니다.\"}";
			System.out.println(message);
		}else {
//			message = "useable ID.";
			message = "사용 가능한 아이디 입니다.";
//			message = "{\"message\": \"사용 가능한 아이디 입니다.\"}";
			System.out.println(message);
		}
		
		return message;
	}
	
}
