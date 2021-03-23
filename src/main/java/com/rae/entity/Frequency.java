package com.rae.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "frequency")
public class Frequency {

    @TableId(value = "id",type= IdType.AUTO)
    private Long id;    //id


    private String className;


    private String api;


    private String number;


}

