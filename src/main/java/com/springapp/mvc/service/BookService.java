package com.springapp.mvc.service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.springapp.mvc.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;

@Service
public class BookService {
    private final RestTemplate restTemplate;
    private final String dataSource;

    @Autowired
    public BookService(RestTemplate restTemplate, @Value("${book.data.source}") String dataSource) {
        this.restTemplate = restTemplate;
        this.dataSource = dataSource;
    }

    public List<Book> getBooks() {
        UriComponents uri = UriComponentsBuilder.fromHttpUrl(dataSource).build();
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
