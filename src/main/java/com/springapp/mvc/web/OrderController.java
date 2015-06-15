package com.springapp.mvc.web;

import com.springapp.mvc.model.User;
import com.springapp.mvc.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/saveOrder")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView saveUserInfo(@ModelAttribute User user) throws Exception {
        ModelAndView modelAndView = new ModelAndView("cart");
        orderService.saveOrder(user);
        modelAndView.addObject("user", user);
        return modelAndView;
    }
}
