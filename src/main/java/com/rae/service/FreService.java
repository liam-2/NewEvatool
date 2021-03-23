package com.rae.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.rae.entity.Frequency;
import com.rae.mapper.FrequencyMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
@Slf4j
public class FreService {
    @Resource
    FrequencyMapper frequencyMapper;


    public int findFre(String className, String API) {
        log.info(" 寻找类 ==>API:{} ", API);
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("class_name", className);
        queryWrapper.eq("api", API);
        Frequency frequency = frequencyMapper.selectOne(queryWrapper);
        if (null != frequency) {
            return Integer.parseInt(frequency.getNumber());
        } else {
            return 1;
        }
    }

}