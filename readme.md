---
第一个版本的接口测试框架
python-pytest

目录介绍
- common 用于存放自定义的模块及工具
- conf 用于存放配置目录，由common/parseyaml.py解析
- data 用于存放测试用例数据
- logs 存放日志文件，由logger实例写入
- reports 存放allure生成的报告结果
- test_cmdb_10.py 测试脚本文件，可以写多个
- pytest.ini pytest的配置文件，指定测试脚本文件及其它pytest选项
- 
- 已完成的接口
  > /api/serverFuzzy  
  > /api/comment/path  
  > /api/topology/rootNode  
  > /api/topology/relationNode  
  > /api/topology/mainData  
  > /api/comment/pathHist  
  > /api/relation/service/{id}  
  > /api/relation/server/{id}  
  > /api/relation/cluster/{id}  
  > /api/relation/people/{id}  
  > /api/relation  
  > /api/topology/defaultPath  
  > /api/topology/relationNodeSet  
