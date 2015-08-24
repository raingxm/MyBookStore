package com.springapp.mvc.mappers;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import com.springapp.mvc.model.User;


public interface UserMapper {
    @Insert(
            "INSERT INTO USER (user_name, user_email, password) " +
                    "VALUES (#{name}, #{email}, #{passwd})"
    )
    @Options(keyProperty = "user_id", useGeneratedKeys = true)
    Integer insert(User user);
}
