package com.seckill;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

//@EnableAutoConfiguration
//@ComponentScan(basePackages = {"com.seckill", "org.n3r.idworker"})

@MapperScan(basePackages = "com.seckill.mapper")
@SpringBootApplication(scanBasePackages = {"com.seckill", "org.n3r.idworker"})
public class ApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(ApiApplication.class, args);
    }

}
