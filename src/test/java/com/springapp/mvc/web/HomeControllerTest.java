package com.springapp.mvc.web;

import com.springapp.mvc.web.HomeController;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class HomeControllerTest {
    @Test
    public void testHelloPage() throws Exception {
        HomeController homeController = new HomeController();
        assertThat(homeController.homePage(), is("home"));
    }
}