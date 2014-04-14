package eden.sun.rbac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainPageController {

	@RequestMapping("/main-page")
	public ModelAndView mainPage(){
		return new ModelAndView("main-page/main-page");
	}
}
