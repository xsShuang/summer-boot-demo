package top.summerboot.demo.org.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author xieshuang
 * @date 2022-03-15 13:44
 */
@TableName("org_dept_info")
@Data
public class OrgDeptInfo {

    private long id;
    private String deptName;
    private String deptRemark;
}
