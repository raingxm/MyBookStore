package com.springapp.mvc.service;

import com.springapp.mvc.mappers.MybatisHelper;
import com.springapp.mvc.mappers.UserMapper;
import com.springapp.mvc.model.User;
import com.springapp.mvc.service.interfaces.UserServiceInterface;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.MessageDigestPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;


@Service
public class UserService implements UserServiceInterface {

    private SqlSession sqlSession;
    private UserMapper userMapper;
    @Autowired
    private MessageDigestPasswordEncoder passwordEncoder;

    public UserService() {
        this(MybatisHelper.getSqlSessionFactory().openSession());
    }

    public UserService(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
        this.userMapper = sqlSession.getMapper(UserMapper.class);
    }

    @Override
    public void createUser(User user, String confirmPass) {
        try {
            if(user.getPasswd().equals(confirmPass)) {
                hashUserPasswd(user);
                userMapper.insert(user);
                this.sqlSession.commit();
            }
        } catch (Exception e) {
            this.sqlSession.rollback();
        }
    }

    private void hashUserPasswd(User user) {
        String pass = user.getPasswd();
        user.setPasswd(passwordEncoder.encodePassword(pass, "bookstore"));
    }
}
