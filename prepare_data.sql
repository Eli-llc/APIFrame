-- 测试数据初始化

start transaction;
-- import user
insert into public.cmdb_user(user_id,platform,user_name,login_name,password,role_code,status,remark,last_login_time,created,created_by,updated,updated_by) values(1425366526559202,'SSO','AT','autoTest','PADDING VALUES','U',1,'',0,1577808000000,0,0,0);


-- import states for ci-ci for ci-people
insert into public.cmdb_state(id,remark,type,created,created_by,updated,updated_by,default_status_id) values (7201,'AT CI running',2,1577808000000,412037724405760,0,0,'f');
insert into public.cmdb_state(id,remark,type,created,created_by,updated,updated_by,default_status_id) values (7202,'AT CI backup',2,1577808000000,412037724405760,0,0,'f');
insert into public.cmdb_state(id,remark,type,created,created_by,updated,updated_by,default_status_id) values (7203,'AT CI 备灾运行',2,1577808000000,412037724405760,0,0,'f');
insert into public.cmdb_state(id,remark,type,created,created_by,updated,updated_by,default_status_id) values (8201,'AT People 下班',1,1577808000000,412037724405760,0,0,'f');
insert into public.cmdb_state(id,remark,type,created,created_by,updated,updated_by,default_status_id) values (8202,'AT People 学习',1,1577808000000,412037724405760,0,0,'f');
insert into public.cmdb_state(id,remark,type,created,created_by,updated,updated_by,default_status_id) values (9201,'AT Relation pending',3,1577808000000,412037724405760,0,0,'f');
insert into public.cmdb_state(id,remark,type,created,created_by,updated,updated_by,default_status_id) values (9202,'AT Relation normal',3,1577808000000,412037724405760,0,0,'f');


-- import ci-ci type
insert into public.cmdb_ci_ci_rel_type(id,remark,cardinality,vector,a_type,b_type,created,created_by,updated,updated_by,default_status_id) values (1201,'AT服务与所属子服务',2,'f',1001,1001,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_ci_rel_type(id,remark,cardinality,vector,a_type,b_type,created,created_by,updated,updated_by,default_status_id) values (1202,'AT服务与对应集群',2,'t',1001,1002,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_ci_rel_type(id,remark,cardinality,vector,a_type,b_type,created,created_by,updated,updated_by,default_status_id) values (1203,'AT集群与对应集群',2,'f',1002,1002,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_ci_rel_type(id,remark,cardinality,vector,a_type,b_type,created,created_by,updated,updated_by,default_status_id) values (1204,'AT集群与集群',1,'t',1002,1002,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_ci_rel_type(id,remark,cardinality,vector,a_type,b_type,created,created_by,updated,updated_by,default_status_id) values (1205,'AT集群与服务器',2,'f',1002,1003,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_ci_rel_type(id,remark,cardinality,vector,a_type,b_type,created,created_by,updated,updated_by,default_status_id) values (1206,'AT服务器与服务器',1,'f',1003,1003,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_ci_rel_type(id,remark,cardinality,vector,a_type,b_type,created,created_by,updated,updated_by,default_status_id) values (1207,'AT服务器调用服务器',2,'f',1003,1003,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_ci_rel_type(id,remark,cardinality,vector,a_type,b_type,created,created_by,updated,updated_by,default_status_id) values (1208,'AT服务调用服务器',2,'f',1001,1003,1577808000000,0,0,0,'f');


-- import ci-people type
insert into public.cmdb_ci_people_rel_type(id,remark,cardinality,ci_type,created,created_by,updated,updated_by,default_status_id) values (2201,'AT服务负责人',2,1001,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_people_rel_type(id,remark,cardinality,ci_type,created,created_by,updated,updated_by,default_status_id) values (2202,'AT集群负责人',2,1002,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_people_rel_type(id,remark,cardinality,ci_type,created,created_by,updated,updated_by,default_status_id) values (2203,'AT集群拥有者',1,1002,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_people_rel_type(id,remark,cardinality,ci_type,created,created_by,updated,updated_by,default_status_id) values (2204,'AT主机负责人',2,1003,1577808000000,0,0,0,'f');
insert into public.cmdb_ci_people_rel_type(id,remark,cardinality,ci_type,created,created_by,updated,updated_by,default_status_id) values (2205,'AT主机拥有者',1,1003,1577808000000,0,0,0,'f');


-- import department information
insert into public.cmdb_bu(id,remark,ext_id,parent_id,status_id,active_flag,created,created_by,updated,updated_by) values (456973179691001,'R&D',0,0,0,'t',1577808000000,0,0,0);
insert into public.cmdb_bu(id,remark,ext_id,parent_id,status_id,active_flag,created,created_by,updated,updated_by) values (456973179691002,'algr',0,456973179691001,0,'t',1577808000000,0,0,0);
insert into public.cmdb_bu(id,remark,ext_id,parent_id,status_id,active_flag,created,created_by,updated,updated_by) values (456973179691003,'front',0,456973179691001,0,'t',1577808000000,0,0,0);
insert into public.cmdb_bu(id,remark,ext_id,parent_id,status_id,active_flag,created,created_by,updated,updated_by) values (456973179691004,'back g',0,456973179691001,0,'t',1577808000000,0,0,0);
insert into public.cmdb_bu(id,remark,ext_id,parent_id,status_id,active_flag,created,created_by,updated,updated_by) values (456973179691005,'Test Group',0,0,0,'t',1577808000000,0,0,0);
insert into public.cmdb_bu(id,remark,ext_id,parent_id,status_id,active_flag,created,created_by,updated,updated_by) values (456973179691006,'Thunder',0,456973179691005,0,'t',1577808000000,0,0,0);


-- import topology path
insert into public.cmdb_topology_path(id,path_id,path_name,created,created_by,updated,updated_by) values (456975363694592,456975363141632,'AT tp app-clu-host-host',1577808000000,0,1577808000000,0);
insert into public.cmdb_path_ci_rel(id,path_id,ci_ci_rel_id,level,created,created_by,updated,updated_by) values(456975363248121,456975363141632,1202,1,1577808000000,0,1577808000000,0);
insert into public.cmdb_path_ci_rel(id,path_id,ci_ci_rel_id,level,created,created_by,updated,updated_by) values(456975363248122,456975363141632,1003,2,1577808000000,0,1577808000000,0);
insert into public.cmdb_path_ci_rel(id,path_id,ci_ci_rel_id,level,created,created_by,updated,updated_by) values(456975363248123,456975363141632,1206,3,1577808000000,0,1577808000000,0);
insert into public.cmdb_topology_path(id,path_id,path_name,created,created_by,updated,updated_by) values (457009453129728,457009452789760,'AT clu-host-host',1594803373518,0,1594803373518,0);
insert into public.cmdb_path_ci_rel(id,path_id,ci_ci_rel_id,level,created,created_by,updated,updated_by) values(456975363248124,457009452789760,1201,1,1577808000000,0,1577808000000,0);
insert into public.cmdb_path_ci_rel(id,path_id,ci_ci_rel_id,level,created,created_by,updated,updated_by) values(456975363248125,457009452789760,1208,2,1577808000000,0,1577808000000,0);


-- path to products(relations)
insert into public.cmdb_path_product_rel(id,path_id,product_name,created,created_by,updated,updated_by) values(456975363248300,456975363141632,'dealAnalysis',1577808000000,0,1577808000000,0);
insert into public.cmdb_path_product_rel(id,path_id,product_name,created,created_by,updated,updated_by) values(456975363248301,456975363141632,'logSpeed',1577808000000,0,1577808000000,0);
insert into public.cmdb_path_product_rel(id,path_id,product_name,created,created_by,updated,updated_by) values(456975363248302,456975363141632,'logAnalysis',1577808000000,0,1577808000000,0);
insert into public.cmdb_path_product_rel(id,path_id,product_name,created,created_by,updated,updated_by) values(456975363248303,456975363141632,'cmdb',1577808000000,0,1577808000000,0);
insert into public.cmdb_path_product_rel(id,path_id,product_name,created,created_by,updated,updated_by) values(456975363248304,457009452789760,'logAnalysis',1577808000000,0,1577808000000,0);
-- default product path
update public.cmdb_default_product_path set path_id = 456975363141632 where product_name in ('logSpeed', 'logAnalysis');
update public.cmdb_default_product_path set path_id = 457009452789760 where product_name = 'refiner';


-- import instance of ci and people

-- import service (application)
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715200,'CoreApplication666','核心业务异构融合系统','B',7202,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715201,'NAPP-APP-00002685','自定义APP业务','B',7001,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715202,'OLMF-HDD-00000429','安全运营张江服务器','A',7201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715203,'service-core-compress','core compress service','ASNR',7002,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715204,'service-electron-001','电子渠道整合平台','Green',7202,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715205,'SRV-00001431-NAPP','漕河泾安全运营服务器','abc',7201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715206,'SRV-OLMF-89757','check security','100',7001,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715207,'APP-032','手机银行系统','APP032',7203,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715208,'YGJ-9999','分布式云计算','Boss',7004,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715209,'SNOOPY-10000','史努比peanuts','C',7001,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_service(id,ci_no,name,level,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715210,'SZHRD-13s','数字华容道','-10',7203,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);

-- import host (server)
insert into public.cmdb_ci_server(id,ci_no,name,hostname,server_ip,manager_ip,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715330,'NLGS-LPR-00008618','facial recognize','facial recognize','192.168.44.101','102.168.10.31',7203,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_server(id,ci_no,name,hostname,server_ip,manager_ip,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715331,'OLT-LPR-00004570','个人主机','个人主机','192.168.44.102','102.168.10.32',7202,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_server(id,ci_no,name,hostname,server_ip,manager_ip,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715332,'UFGG-12333','办公专用','办公专用','192.168.44.103','102.168.10.33',7001,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_server(id,ci_no,name,hostname,server_ip,manager_ip,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715333,'host-001','安全服务程序','安全服务程序','192.168.44.104','102.168.10.34',7201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_server(id,ci_no,name,hostname,server_ip,manager_ip,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715334,'host-002','发送报告程序','发送报告程序','192.168.44.105','102.168.10.35',7002,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_server(id,ci_no,name,hostname,server_ip,manager_ip,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715335,'server-003','每日检测程序','每日检测程序','192.168.44.106','102.168.10.36',7004,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_server(id,ci_no,name,hostname,server_ip,manager_ip,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715336,'host-host-005','资源申请功能','资源申请功能','192.168.44.107','102.168.10.37',7203,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_server(id,ci_no,name,hostname,server_ip,manager_ip,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715337,'server-093422456','children management','children management','192.168.44.108','102.168.10.38',7003,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_server(id,ci_no,name,hostname,server_ip,manager_ip,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715338,'SH-server-security','prepare elements','prepare elements','192.168.44.109','102.168.10.39',7202,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_server(id,ci_no,name,hostname,server_ip,manager_ip,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715339,'8485-host-1','car embedded','car embedded','192.168.44.110','102.168.10.40',7201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);

-- import cluster
insert into public.cmdb_ci_cluster(id,ci_no,name,env,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715681,'APP-00001431','APP','APP',7203,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_cluster(id,ci_no,name,env,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715682,'Middle-009025','中间件','中间件',7202,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_cluster(id,ci_no,name,env,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715683,'WEB-ACE-2222','WEB','WEB',7001,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_cluster(id,ci_no,name,env,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715684,'DataBase-SH','Database','Database',7003,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_cluster(id,ci_no,name,env,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585715685,'SparkWCD','Other','Spark',7201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);

-- import attribute of ci
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717011,'CoreApplication666',457053585715200,'Location','Bei Jing','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717012,'NAPP-APP-00002685',457053585715201,'Location','Shang Hai','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717013,'APP-032',457053585715207,'Location','Bei Jing','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717014,'APP-032',457053585715207,'OS','Ubuntu 16.4.0 LTS','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717015,'NLGS-LPR-00008618',457053585715330,'Location','Bei Jing','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717016,'server-003',457053585715335,'Location','Bei Jing','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717017,'server-003',457053585715335,'OS','CentOS 7.8','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717018,'host-001',457053585715333,'Function','Security','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717019,'OLT-LPR-00004570',457053585715331,'Weather','Storm with ThunderLight','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717020,'APP-00001431',457053585715681,'Location','He Nan','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717021,'APP-00001431',457053585715681,'Name','APPs for Payment','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717022,'Middle-009025',457053585715682,'Location','Bei Jing','t','f',1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_attr(id,ci_no,ci_id,attr_class,attr,active_flag,not_sync_flag,created,created_by,updated,updated_by) values(457053585717023,'CoreApplication666',457053585715200,'Favorite Fruit','Peach,Watermelon,Strawberry','t','f',1577808000000,0,1577808000000,0);

-- import People
insert into public.cmdb_people(id,no,name,email,phone,webchat,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717040,'zhangsan','张三','zs@eoi.com','15921002890','w15921002890',8001,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_people(id,no,name,email,phone,webchat,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717041,'lisi','李四','ls@eoi.com','15921002891','w15921002891',8201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_people(id,no,name,email,phone,webchat,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717042,'wangwu','王五','ww@eoi.com','15921002892','w15921002892',8202,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);


-- import people department relation
insert into public.cmdb_bu_people_rel(id,bu_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717050,456973179691003,'zhangsan',9202,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_bu_people_rel(id,bu_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717051,456973179691006,'wangwu',9003,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_bu_people_rel(id,bu_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717052,456973179691005,'lisi',9201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);


-- import relation of ci-ci and ci-people

-- import relation of ci-ci (match topology path)
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717060,1202,'CoreApplication666','APP-00001431',9201,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717061,1202,'CoreApplication666','SparkWCD',9002,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717062,1003,'SparkWCD','NLGS-LPR-00008618',9002,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717063,1003,'SparkWCD','server-003',9202,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717064,1206,'server-003','OLT-LPR-00004570',9202,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717065,1206,'server-003','host-001',9201,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717066,1201,'NAPP-APP-00002685','APP-032',9202,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717067,1208,'APP-032','OLT-LPR-00004570',9201,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717068,1208,'APP-032','SH-server-security',9001,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717069,1208,'APP-032','server-003',9001,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717070,1201,'CoreApplication666','APP-032',9004,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717071,1201,'NAPP-APP-00002685','SNOOPY-10000',9201,'f','t',1595174401000,253400716799000,1577808000000,0,1577808000000,0);
-- history
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717072,1201,'NAPP-APP-00002685','service-electron-001',9002,'f','f',1593569116000,1594310413000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717073,1201,'NAPP-APP-00002685','SZHRD-13s',9002,'f','f',1593569116000,1595174401000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717074,1208,'service-electron-001','UFGG-12333',9002,'f','f',1593569116000,1594310413000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_rel(id,rel_id,ci_a,ci_b,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717075,1004,'NAPP-APP-00002685','SRV-OLMF-89757',9002,'f','f',1593569116000,1595174401000,1577808000000,0,1577808000000,0);

-- import relation of ci-people
insert into public.cmdb_ci_people_rel(id,rel_id,ci_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717090,2201,'CoreApplication666','zhangsan',9003,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_people_rel(id,rel_id,ci_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717091,2202,'SparkWCD','zhangsan',9201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_people_rel(id,rel_id,ci_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717092,2204,'server-003','zhangsan',9002,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_people_rel(id,rel_id,ci_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717093,2204,'host-001','zhangsan',9202,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_people_rel(id,rel_id,ci_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717094,2205,'server-003','lisi',9202,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_people_rel(id,rel_id,ci_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717095,2201,'APP-032','wangwu',9201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_people_rel(id,rel_id,ci_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717096,2003,'SH-server-security','wangwu',9201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
insert into public.cmdb_ci_people_rel(id,rel_id,ci_id,people_id,status_id,not_sync_flag,active_flag,valid_from,valid_to,created,created_by,updated,updated_by) values(457053585717097,2205,'SH-server-security','lisi',9201,'f','t',1593569116000,253400716799000,1577808000000,0,1577808000000,0);
commit;

-- change status of CI to 7002, people to 8002, and relation to 9002, as other product only query the specific status.
/*
start transaction;
update public.cmdb_ci_server set status_id = 7002;
update public.cmdb_ci_service set status_id = 7002;
update public.cmdb_ci_cluster set status_id = 7002;
update public.cmdb_people set status_id = 8002;
update public.cmdb_ci_rel set status_id = 9002;
update public.cmdb_ci_people_rel set status_id = 9002;
commit;
*/
