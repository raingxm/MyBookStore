package com.springapp.mvc.model;

public class Book {
    private String name;
    private String author;
    private String describe;
    private double price;

    public Book(String name, String author, String describe, double price) {
        this.name = name;
        this.author = author;
        this.describe = describe;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public String getAuthor() {
        return author;
    }

    public String getDescribe() {
        return describe;
    }

    public double getPrice() {
        return price;
    }
}