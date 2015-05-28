package com.springapp.mvc.service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.springapp.mvc.model.Book;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;

public class BookService {
    private RestTemplate restTemplate = new RestTemplate();
    public List<Book> getBooks() {
        UriComponents uri = UriComponentsBuilder.fromHttpUrl("http://localhost:3000").build();
        try {
            URI req = uri.encode().toUri();
            ResponseEntity<String> responseEntity = restTemplate.getForEntity(req, String.class);
            return new Gson().fromJson(responseEntity.getBody(), new TypeToken<List<Book>>() {
            }.getType());
        } catch (Exception e) {
            return new ArrayList<>();
        }
    }
}
