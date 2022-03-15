package top.summerboot.demo.org.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author xieshuang
 * @date 2022-03-15 13:46
 */
@Data
@TableName("sys_auth_role")
public class SysAuthRole {

    private long id;
    private String roleName;
    private String roleRemark;
    private String roleCode;
}
