package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/contactUs")
public class ContactUsController {
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView showContactInfo() {
        return new ModelAndView("contact");
    }
}
