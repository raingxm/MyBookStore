package com.springapp.mvc.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springapp.mvc.model.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/bookList")
public class BooksController {
    @RequestMapping(method = RequestMethod.GET)
    public String display() {
        return "books";
    }

    @RequestMapping(value="/history", method = RequestMethod.GET)
    public ModelAndView displayHistoryBooks() {
        ModelAndView modelAndView = new ModelAndView("books");
        Book book = new Book("hela", "andi", "goodbook", 20.3);
        List historyBooks = new ArrayList<Book>();
        historyBooks.add(book);
        modelAndView.getModel().put("historical", historyBooks);
        return modelAndView;
    }

}
