package top.summerboot.demo.org.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import top.summerboot.demo.org.entity.OrgUserInfo;
import top.summerboot.demo.org.pojo.query.OrgUserInfoQuery;
import top.summerboot.demo.org.pojo.vo.OrgUserInfoVO;

/**
 * <p>
 * 系统用户 服务类
 * </p>
 *
 * @author 谢霜
 * @since 2021-11-30
 */
public interface IOrgUserInfoService extends IService<OrgUserInfo> {

    IPage<OrgUserInfo> entityPage(OrgUserInfoQuery query);

    IPage<OrgUserInfoVO> voPage(OrgUserInfoQuery query);
}
