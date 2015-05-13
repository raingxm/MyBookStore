package com.springapp.mvc;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

public class BooksControllerTest {
    @Test
    public void testDisplayBooksPage() throws Exception {
        BooksController booksController = new BooksController();
        assertThat(booksController.display(), is("books"));
    }
}