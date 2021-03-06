/*
 * Project Name:hbm-be.
 * File Name:SrvInterfaceDao.java
 * Package Name:com.hginfo.hbm.be.dao.srv
 * Date:2017年06月08日 上午10:07:12
 * Copyright (c) 2016, hongguaninfo.com All Rights Reserved.
 *
 */
package com.hginfo.hbm.be.dao.srv;

import org.springframework.stereotype.Repository;

import com.hginfo.hbm.base.entity.srv.SrvInterface;
import com.hginfo.hbm.be.dao.base.SingleKeyBaseDao;
import com.hginfo.hbm.be.mapper.srv.SrvInterfaceMapper;

/**
 * 接口表: srv_interface. <br />
 * dao 层 <br />
 * Date: 2017年06月08日 上午10:07:12 <br />
 *
 * @author qiujingde
 * @since V1.0.0
 */
@Repository
public class SrvInterfaceDao extends SingleKeyBaseDao<SrvInterface>
        implements SrvInterfaceMapper {

}
