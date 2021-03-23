package com.rae;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;


/**
 * @Author: liam
 * @Date: 2021/1/25 10:16
 */

@SpringBootApplication
@MapperScan("com.rae.mapper")
public class MainApplication {


    public static void main(String[] args) {
        ConfigurableApplicationContext run = SpringApplication.run(MainApplication.class, args);

    }
}
