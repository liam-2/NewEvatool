package com.rae.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.rae.entity.EvaRecord;
import com.rae.mapper.EvaRecordMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author liam
 */
@Service
@Slf4j
public class EvaService {
    @Resource
    EvaRecordMapper evaRecordMapper;


    public boolean doSave(EvaRecord eva) {
        log.info(" 插入record ==>eva:{} ", eva);
        return evaRecordMapper.insert(eva) > 0;

    }


    public List<EvaRecord> findEva() {
        log.info(" 查找record ==> ");
        return evaRecordMapper.selectList(new QueryWrapper());
    }
}