package com.rae.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.rae.entity.User;
import com.rae.mapper.UserMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
@Slf4j
public class UserService {

    @Resource
    UserMapper userMapper;


    public boolean doSave(User user) {
        return userMapper.insert(user) > 0;
    }

    public boolean hasUser(User user) {
        log.info(" 查找是否有user ==>user:{} ", user);
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("user_name", user.getUserName());
        queryWrapper.eq("password", user.getPassword());
        return null != userMapper.selectOne(queryWrapper);
    }

    public List<User> findUsers() {
        log.info(" 查找user ");
        return userMapper.selectList(new QueryWrapper());
    }
}