package com.itheima;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class APP {
    public static void main(String[] args){
        new ClassPathXmlApplicationContext("spring-jobs.xml");
    }
}
