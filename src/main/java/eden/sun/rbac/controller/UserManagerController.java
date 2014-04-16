package eden.sun.rbac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user-manager")
public class UserManagerController {

	@RequestMapping("/home")
	public ModelAndView home(){
		return new ModelAndView("user-manager/user-manager");
	}
}
