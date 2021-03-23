package com.rae.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.rae.entity.User;
import org.springframework.stereotype.Repository;

/**
 * @author ：liam
 * @date ： 2021/3/22 19:07
 * @description：数据库接口
 */
@Repository
public interface UserMapper extends BaseMapper<User> {
}
