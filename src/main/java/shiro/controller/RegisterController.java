package shiro.controller;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import shiro.entity.User;
import shiro.service.UserServiceImpl;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RegisterController {

	@Autowired
	private UserServiceImpl userService;

	@RequestMapping(value = "/register")
	public String showRegisterForm(HttpServletRequest req, Model model) {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		User user = userService.createUser(new User(username, password));
		return "login";
	}

}
