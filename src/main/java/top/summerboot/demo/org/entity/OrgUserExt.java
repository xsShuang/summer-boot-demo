package top.summerboot.demo.org.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author xieshuang
 * @date 2022-03-15 13:45
 */
@Data
@TableName("org_user_ext")
public class OrgUserExt {

    private Long id;
    private Long userId;
    private String address;
    private String sex;
    private Integer age;
    private String city;
}
