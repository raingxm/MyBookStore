package com.springapp.mvc.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView loginPage(@RequestParam(value = "success", required = false) boolean success) {
        ModelAndView login = new ModelAndView("login");
        if(success) {
            login.getModel().put("success", true);
        }
        return login;
    }
}
