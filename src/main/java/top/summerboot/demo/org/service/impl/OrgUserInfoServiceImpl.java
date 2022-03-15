package top.summerboot.demo.org.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import top.summerboot.demo.org.entity.OrgUserInfo;
import top.summerboot.demo.org.mapper.OrgUserInfoMapper;
import top.summerboot.demo.org.pojo.query.OrgUserInfoQuery;
import top.summerboot.demo.org.pojo.vo.OrgUserInfoVO;
import top.summerboot.demo.org.service.IOrgUserInfoService;
import top.summerboot.orm.association.AssociationQuery;
import top.summerboot.orm.dto.PageDTO;
import top.summerboot.orm.wrapper.WrapperFactory;

/**
 * <p>
 * 系统用户 服务实现类
 * </p>
 *
 * @author 谢霜
 * @since 2021-11-30
 */
@Service
public class OrgUserInfoServiceImpl extends ServiceImpl<OrgUserInfoMapper, OrgUserInfo> implements IOrgUserInfoService {

    @Override
    public IPage<OrgUserInfo> entityPage(OrgUserInfoQuery query) {
        return this.page(PageDTO.page(query), new WrapperFactory<OrgUserInfo>().create(query));
    }

    @Override
    public IPage<OrgUserInfoVO> voPage(OrgUserInfoQuery query) {
        return new AssociationQuery<>(OrgUserInfoVO.class).voPage(query);
    }
}
