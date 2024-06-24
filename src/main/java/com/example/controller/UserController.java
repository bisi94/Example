package com.example.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.model.User;
import com.example.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService; 
	
	@RequestMapping("/user")
	public String login(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		String idStr = request.getParameter("id");
		
		int id = Integer.parseInt(idStr);
		
		User getUserdata = this.userService.selectUser(id);
		
		System.out.println("id ::: " +id+ " :::::: result :::: " +getUserdata.getUserName());
		
		model.addAttribute("getUserdata", getUserdata);
		
		return "result";
	}
	
}
