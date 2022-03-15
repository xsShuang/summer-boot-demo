package top.summerboot.demo.org.pojo.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import top.summerboot.demo.org.entity.OrgDeptInfo;
import top.summerboot.demo.org.entity.OrgUserExt;
import top.summerboot.orm.association.annotation.JoinSelect;
import top.summerboot.orm.association.annotation.Select;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * <p>
 * 系统用户
 * </p>
 *
 * @author 谢霜
 * @since 2021-11-30
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("org_user_info")
@ApiModel(value="OrgUserInfoVO对象", description="系统用户VO对象")
public class OrgUserInfoVO implements Serializable {

    @TableField(exist = false)
    private static final long serialVersionUID=1L;

    private Long id;

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "密码")
    private String password;

    @ApiModelProperty(value = "电话号码")
    private String phone;

    @ApiModelProperty(value = "昵称/真实姓名")
    private String fullName;

    @ApiModelProperty(value = "是否启用")
    private Integer enable;

    private Date createTime;

    private Date updateTime;

    @ApiModelProperty(value = "photoUrl")
    private String photoUrl;

    @ApiModelProperty(value = "微信openId")
    private String wxId;

    @ApiModelProperty(value = "电子邮箱")
    private String email;

    private Integer userSort;

    /**
     * 普通多对多关联用法
     */
    @JoinSelect(relationName = "org_dept_info",
            middleTable = "org_user_dept",
            middleMainId = "user_id",
            middleRelationId = "dept_id")
    @ApiModelProperty(value = "用户部门集合")
    private List<OrgDeptInfo> deptInfoList;

    /**
     * 多对多进阶用法，只需要关联对象中的一个属性
     */
    @JoinSelect(relationName = "sys_auth_role",
            middleTable = "sys_auth_user_role",
            middleMainId = "user_id",
            middleRelationId = "role_id",
            field = "role_name")
    @ApiModelProperty(value = "用户角色集合")
    private List<String> roleList;

    /**
     * 无需中间表的 一对一，一对多用法
     */
    @JoinSelect(relationName = "org_user_ext",
            relationId = "user_id")
    @ApiModelProperty(value = "用户扩展信息")
    private OrgUserExt ext;

    /**
     * 关联查询进阶用法，直接在VO类上增加关联对象字段
     * 注意：此用法需要配合query使用
     * 表名.字段名
     */
    @Select(value = "org_user_ext.address")
    private String address;
    @Select(value = "org_user_ext.sex")
    private String sex;
    @Select(value = "org_user_ext.age")
    private Integer age;
    @Select(value = "org_user_ext.city")
    private String city;
}
