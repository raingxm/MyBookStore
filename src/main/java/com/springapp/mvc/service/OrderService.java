package com.springapp.mvc.service;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import org.springframework.stereotype.Service;
import com.springapp.mvc.model.User;


@Service
public class OrderService {
    public void saveOrder(User user) throws Exception {
        MongoClient client = new MongoClient();
        MongoDatabase db = client.getDatabase("store");
        MongoCollection collection = db.getCollection("order");
        Document insertUser = new Document().append("name", user.getName());
        Document order = new Document().append("name", "C plus").append("user", insertUser);
        collection.insertOne(order);
    }
}
