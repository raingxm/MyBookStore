package com.springapp.mvc.web;

import com.springapp.mvc.model.Book;
import com.springapp.mvc.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/bookList")
public class BooksController {
    @Autowired
    private BookService bookService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView display() {
        ModelAndView modelAndView = new ModelAndView("books");
        modelAndView.getModel().put("bookList", bookService.getBooks());
        return modelAndView;
    }

    @RequestMapping(value="/history", method = RequestMethod.GET)
    public ModelAndView displayHistoryBooks() {
        ModelAndView modelAndView = new ModelAndView("books");
        Book book = new Book("hela", "andi", "goodbook", 20.3);
        List historyBooks = new ArrayList<Book>();
        historyBooks.add(book);
        modelAndView.getModel().put("bookList", historyBooks);
        return modelAndView;
    }

}
