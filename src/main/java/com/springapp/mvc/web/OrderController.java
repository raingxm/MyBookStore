package com.springapp.mvc.web;

import com.springapp.mvc.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/saveOrder")
public class OrderController {
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView saveUserInfo(@ModelAttribute User user) {
        ModelAndView modelAndView = new ModelAndView("cart");
        modelAndView.addObject("user", user);
        return modelAndView;
    }
}
