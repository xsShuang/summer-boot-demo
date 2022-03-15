package top.summerboot.demo.org.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

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
@ApiModel(value="OrgUserInfo对象", description="系统用户")
public class OrgUserInfo extends Model<OrgUserInfo> {

    private static final long serialVersionUID=1L;

    @NotNull(message = "id不能为空")
    @TableId(value = "id", type = IdType.ASSIGN_ID)
    private Long id;

    @NotBlank(message = "用户名不能为空")
    @ApiModelProperty(value = "用户名")
    @TableField(value = "username")
    private String username;

    @ApiModelProperty(value = "密码")
    @TableField("password")
    private String password;

    @ApiModelProperty(value = "电话号码")
    @TableField("phone")
    private String phone;

    @ApiModelProperty(value = "昵称/真实姓名")
    @TableField("full_name")
    private String fullName;

    @NotNull(message = "是否启用不能为空")
    @ApiModelProperty(value = "是否启用")
    @TableField("enable")
    private Integer enable;

    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private Date createTime;

    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;

    @ApiModelProperty(value = "photoUrl")
    @TableField("photo_url")
    private String photoUrl;

    @ApiModelProperty(value = "微信openId")
    @TableField("wx_id")
    private String wxId;

    @ApiModelProperty(value = "电子邮箱")
    @TableField("email")
    private String email;

    @NotNull(message = "不能为空")
    @TableField("user_sort")
    private Integer userSort;

    @Override
    public Serializable pkVal() {
        return this.username;
    }

}
