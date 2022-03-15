package top.summerboot.demo.org.service.impl;

import com.alibaba.fastjson.JSON;
import com.westcatr.rd.demo.SpringbootTest;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import top.summerboot.demo.org.pojo.query.OrgUserInfoQuery;
import top.summerboot.demo.org.service.IOrgUserInfoService;

class OrgUserInfoServiceImplTest extends SpringbootTest {

    @Autowired
    private IOrgUserInfoService orgUserInfoService;

    @Test
    void test(){
        System.out.println(JSON.toJSONString(orgUserInfoService.voPage(new OrgUserInfoQuery())));
    }
}
