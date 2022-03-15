package top.summerboot.demo.org.pojo.query;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import top.summerboot.orm.association.annotation.JoinExpression;
import top.summerboot.orm.dto.CommonQueryDTO;
import top.summerboot.orm.wrapper.QueryCondition;

import java.io.Serializable;

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
@ApiModel(value="OrgUserInfo查询对象", description="系统用户查询对象")
public class OrgUserInfoQuery extends CommonQueryDTO implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "用户名")
    @QueryCondition
    private String username;

    @ApiModelProperty(value = "电话号码")
    @QueryCondition
    private String phone;

    @ApiModelProperty(value = "昵称/真实姓名")
    @QueryCondition(condition = QueryCondition.Condition.LIKE)
    private String fullName;

    @ApiModelProperty(value = "是否启用")
    @QueryCondition
    private Integer enable;

    @ApiModelProperty(value = "微信openId")
    @QueryCondition
    private String wxId;

    @ApiModelProperty(value = "电子邮箱")
    @QueryCondition
    private String email;

    /**
     * 配合VO实现：关联查询进阶用法，直接在VO类上增加关联对象字段
     */
    @JoinExpression(allJoin = true, value = "left join org_user_ext on org_user_info.id = org_user_ext.id")
    @QueryCondition(condition = QueryCondition.Condition.DEFAULT, sort = QueryCondition.Sort.AUTO)
    private Integer userSort;

    @JoinExpression(value = "join sys_auth_user_role ur on ur.user_id = org_user_info.id" +
            "join sys_auth_role r on ur.role_id = r.id")
    @ApiModelProperty(value = "角色名称")
    @QueryCondition(field = "r.role_name")
    private String roleName;

    @JoinExpression(value = "join org_user_dept ud on ur.user_id = org_user_info.id" +
            "join org_dept_info d on ud.dept_id = d.id")
    @ApiModelProperty(value = "部门名称")
    @QueryCondition(field = "d.dept_name")
    private String deptName;
}
