/*
 * update for V3.0.5-rc1
 */
/**修改版本号***/
update sys_config set CONFIG_VALUE_ = 'V3.0.5-RC1' where CONFIG_KEY_ = 'sysVersion';
update sys_meta_constraint_def set ERROR_MSG_ = '系统字典组编码已存在！' where DEF_ID_ = '1067051767457441934';

/**修正单词拼写错误**/
update sys_config set CONFIG_KEY_='userSingleOnline' where CONFIG_KEY_='userSignleOnline';

/** 增加安全等级配置。 **/
insert into sys_config (CONFIG_ID_, TENANT_ID_, CONFIG_KEY_, CONFIG_VALUE_, CONFIG_DESC_, CONFIG_TYPE_, DEFAULT_VALUE_, SORT_NO_, VERSION_, IS_CURRENT_, DESCR_, IS_DELETE_, IS_FINAL_, CRT_TIME_, UPD_TIME_, CRT_USER_ID_, UPD_USER_ID_) values('1077291342757920181','1','sysSecurityLevel','1','(1:低，2:中，3:高)','sys','1','16','1','1',NULL,'0','0',to_date('01-09-2017 14:37:45', 'dd-mm-yyyy hh24:mi:ss'),to_date('01-09-2017 14:37:45', 'dd-mm-yyyy hh24:mi:ss'),'1','1');

/**修正权限配置*/
update sys_auth set URI_='/sys/meta/constraintDetailList/%d' where AUTH_ID_='1068491783701546385';
update sys_auth set URI_='/sys/meta/getFieldList/%d;/sys/sysMetadata/getFieldList/%d/%d' where AUTH_ID_='1060536006906345181';
INSERT INTO sys_auth_join VALUES (1078922711798759683, 1066770920083789089, 1060532901006407366, 0, to_date('24-05-2017 10:42:09', 'dd-mm-yyyy hh24:mi:ss'), 1);
INSERT INTO sys_auth_join VALUES (1078925066474733851, 1066770920083789089, 1060536006906345181, 0, to_date('24-05-2017 10:42:09', 'dd-mm-yyyy hh24:mi:ss'), 1);

/**模块操作图标权限**/
update sys_auth set AUTH_CATEGORY_=2 where AUTH_ID_='1060512630049426250';
INSERT INTO sys_auth_join VALUES (1078929784115675462, 1053269289174698561, 1060512630049426250, 0, to_date('24-05-2017 10:42:09', 'dd-mm-yyyy hh24:mi:ss'), 1);
INSERT INTO sys_auth_join VALUES (1078929797644403016, 1053269289259633218, 1060512630049426250, 0, to_date('24-05-2017 10:42:09', 'dd-mm-yyyy hh24:mi:ss'), 1);

/**任务类型表 增加字段父级ID**/
alter table SYS_TASK_TYPE add fid_ NUMBER(20);
comment on column SYS_TASK_TYPE.fid_
  is '父级ID';