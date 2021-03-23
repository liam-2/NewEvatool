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
@TableName(value = "eva_record")
public class EvaRecord {

    @TableId(value = "id",type= IdType.AUTO)
    private Long id;    //id

    private String toolName;

    private String evaAccuracy;

    private String evaPrecision;

    private String evaRecall;

    private String evaFvalue;

    private String evaAcc;

    private String evaUtility;

    private String utilType;


}

