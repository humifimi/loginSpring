package controller;

import model.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.authentication;
import service.authenticationImp;

@Controller  
public class loginController {
	
	@RequestMapping(value="/loginController", method=RequestMethod.POST)
	public String loginAuth(@RequestParam("userid")String username, 
			@RequestParam("password")String password, Model model){
		
		authentication auth = new authenticationImp();
		if(auth.authentication(username, password)){
			
			user user = new user(username, password);
			model.addAttribute("user",user);
			return "welcome";
			
		}
		else{
			model.addAttribute("message","Username or password may wrong");
			return "login";
		}
		
	}

}
