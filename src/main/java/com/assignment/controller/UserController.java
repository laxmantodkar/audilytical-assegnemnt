package com.assignment.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.assignment.model.User;
import com.assignment.repository.UserRepo;

@RestController
public class UserController {
	@Autowired
	private UserRepo userRepo;

	@PostMapping("save")
	public ModelAndView registerUser(@ModelAttribute User user) {
		ModelAndView mv = new ModelAndView();
		try {
			User saveUser = userRepo.save(user);
			if (saveUser != null) {
				mv.addObject("msg", "User Register successfully");
				mv.addObject("user", saveUser);
				mv.setViewName("home");
			} else {
				mv.addObject("msg", "User Not Register");
				mv.setViewName("home");
			}
		} catch (Exception e) {
			System.out.println(e);
			mv.addObject("msg", "User Name Already Used");
			mv.setViewName("singup");
		}

		return mv;

	}

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}

	@GetMapping("/singup")
	public ModelAndView singUp() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("singup");
		return mv;
	}

	@PostMapping("/login")
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		User user = userRepo.findByUserNameAndPassword(userName, password);
		System.out.println(user);
		if (user == null) {
			mv.addObject("msg", "Please check user name and password");
			mv.setViewName("home");
		} else {
			mv.addObject("user", user);
			mv.setViewName("logininfo");
		}

		return mv;
	}

}
