package com.springapp.mvc.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.springapp.mvc.service.interfaces.UserServiceInterface;
import com.springapp.mvc.model.User;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private UserServiceInterface userService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView registerPage() {
        return new ModelAndView("register");
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView registerNewUser(@ModelAttribute User user,
                                        @RequestParam("confirmpass") String confirmPass) {

        userService.createUser(user, confirmPass);
        return new ModelAndView("redirect:/login?success=true");
    }
}
