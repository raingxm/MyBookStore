package com.springapp.mvc;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

public class HelloControllerTest {
    private HelloController helloController = new HelloController();

    @Test
    public void shouldReturnHelloPage() throws Exception {
        assertThat(helloController.printWelcome(new ModelMap()), is("hello"));
    }
}