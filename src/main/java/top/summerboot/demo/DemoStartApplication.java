package top.summerboot.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * @author xieshuang
 */
@EnableScheduling
@EnableAsync
@SpringBootApplication
@MapperScan(basePackages = {"top.summerboot.demo.org.mapper"})
public class DemoStartApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoStartApplication.class, args);
    }

}
