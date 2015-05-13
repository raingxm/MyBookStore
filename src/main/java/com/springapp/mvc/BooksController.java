package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/bookList")
public class BooksController {
    @RequestMapping(method = RequestMethod.GET)
    public String display() {
        return "books";
    }
}
