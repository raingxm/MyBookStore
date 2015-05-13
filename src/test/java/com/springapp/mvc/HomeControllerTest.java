package com.springapp.mvc;

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