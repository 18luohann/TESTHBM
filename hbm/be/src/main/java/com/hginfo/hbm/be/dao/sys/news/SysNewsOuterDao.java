/*
 * Project Name:hbm-be.
 * File Name:SysNewsOuterDao.java
 * Package Name:com.hginfo.hbm.be.dao.sys
 * Date:2017年06月27日 下午6:54:47
 * Copyright (c) 2016, hongguaninfo.com All Rights Reserved.
 *
 */
package com.hginfo.hbm.be.dao.sys.news;

import org.springframework.stereotype.Repository;

import com.hginfo.hbm.base.entity.sys.news.SysNewsOuter;
import com.hginfo.hbm.be.dao.base.SingleKeyBaseDao;
import com.hginfo.hbm.be.mapper.sys.news.SysNewsOuterMapper;

/**
 * 外部消息详情: sys_news_outer. <br />
 * dao 层 <br />
 * Date: 2017年06月27日 下午6:54:47 <br />
 *
 * @author yinyanzhen
 * @since V1.0.0
 */
@Repository
public class SysNewsOuterDao extends SingleKeyBaseDao<SysNewsOuter>
        implements SysNewsOuterMapper {

}
