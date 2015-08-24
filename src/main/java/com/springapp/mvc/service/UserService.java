package com.springapp.mvc.service;

import com.springapp.mvc.mappers.MybatisHelper;
import com.springapp.mvc.mappers.UserMapper;
import com.springapp.mvc.model.User;
import com.springapp.mvc.service.interfaces.UserServiceInterface;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserServiceInterface {

    private SqlSession sqlSession;
    private UserMapper userMapper;

    public UserService() {
        this(MybatisHelper.getSqlSessionFactory().openSession());
    }

    public UserService(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
        this.userMapper = sqlSession.getMapper(UserMapper.class);
    }

    @Override
    public void createUser(User user) {
        try {
            userMapper.insert(user);
            this.sqlSession.commit();
        } catch (Exception e) {
            this.sqlSession.rollback();
        }
    }
}
