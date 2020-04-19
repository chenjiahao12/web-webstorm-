/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : t224

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 19/04/2020 21:19:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_vue_articles
-- ----------------------------
DROP TABLE IF EXISTS `t_vue_articles`;
CREATE TABLE `t_vue_articles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_vue_articles
-- ----------------------------
INSERT INTO `t_vue_articles` VALUES (1, 'MySQL Tutorial', 'DBMS stands for DataBase ...');
INSERT INTO `t_vue_articles` VALUES (2, 'How To Use MySQL Efficiently', 'After you went through a ...');
INSERT INTO `t_vue_articles` VALUES (3, 'Optimising MySQL', 'In this tutorial we will show ...');
INSERT INTO `t_vue_articles` VALUES (4, '1001 MySQL Tricks', '1. Never run mysqld as root. 2. ...');
INSERT INTO `t_vue_articles` VALUES (5, 'MySQL vs. YourSQL', 'In the following database comparison ...');
INSERT INTO `t_vue_articles` VALUES (6, 'MySQL Security', 'When configured properly, MySQL ...');
INSERT INTO `t_vue_articles` VALUES (8, '阿里与拼多多的增量之战', '近日，多家媒体报道阿里内部正考虑将聚划算彻底从淘宝天猫独立出来，成立大聚划算事业群。据传独立后的聚划算将肩负起阿里进攻下沉市场、迎战拼多多的重任');
INSERT INTO `t_vue_articles` VALUES (9, 'lucene工具类', 'package com.javaxl.p1.utils;\n\nimport java.io.IOException;\nimport java.nio.file.Paths;\n\nimport org.apache.lucene.analysis.Analyzer;\nimport org.apache.lucene');
INSERT INTO `t_vue_articles` VALUES (10, 'lucene案例', '对某一表进行索引操作的帮助类package com.javaxl.p1.component;\n\nimport com.javaxl.p1.entity.Blog;\nimport com.javaxl.p1.service.BlogService;\nimport com.javaxl.p1.utils.Date');
INSERT INTO `t_vue_articles` VALUES (15, 'solr简介', 'solr简单了解下，相较于lucene好处在哪里');
INSERT INTO `t_vue_articles` VALUES (18, 'Linux环境搭建', '1.安装VMWare虚拟机192.168.147.138centos、ubemt、小红帽2.安装CentOS（10分钟）  2.1 查看并设置Linux的IP地址    1）ip addr         查看ip  2）cd /etc/sysconfig/network-scripts  调转目录  3）l');
INSERT INTO `t_vue_articles` VALUES (19, 'tomcat配置以及域名解析', '第一步：我们现在要干两个事情，第一个是去掉端口，第二个是去掉项目名称我们找到tomcat安装包下的conf文件夹下的server.xml文件；<Connector port=\"80\" protocol=\"HTTP/1.1\"\n               connectionTimeout=\"20000\"\n  ');
INSERT INTO `t_vue_articles` VALUES (20, 'Linux下的mysql差异配置', '问题1： WARN: Establishing SSL connection without server\'s identity verification is not recommended. According to MySQL 5.5.45+, 5.6.26+ and 5.7.6+ requiremen');
INSERT INTO `t_vue_articles` VALUES (21, '代码调试', '1、调试服务器上的代码是否与数据库的数据是否是联通的  DBAccess.javapackage com.javaxl.p1.utils;\n\nimport java.io.InputStream;\nimport java.io.PrintStream;\nimport java.sql.Connection;\n');
INSERT INTO `t_vue_articles` VALUES (22, 'SSH整合', '1. pom  1.1 hibernate相关(5.2.12.Final)      hibernate-core      hibernate-c3p0（数据库连接池）      hibernate-ehcache      mysql-connector-java(5.1.44)  1.2 spring相');
INSERT INTO `t_vue_articles` VALUES (23, 'SSM整合', '1、pom.xml<properties>\n        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>\n        <maven.compiler.source>1.8</maven.compiler.source>');
INSERT INTO `t_vue_articles` VALUES (24, 'window下的mysql问题', '问题1：Variable \'sql_mode\' can\'t be set to the value of \'NO_AUTO_CREATE_USER\'解决：a、是用navicat打开命令窗口（工具->控制台窗口）b、查看配置，修改配置（注意：与Linux环境有所差异）SELECT @@global.sql_mo');
INSERT INTO `t_vue_articles` VALUES (25, 'jQuery之选择器', 'jQuery简介jQuery是一个快速、简洁的JavaScript框架，是继Prototype之后又一个优秀的JavaScript代码库（或JavaScript框架）。jQuery设计的宗旨是“write Less，Do More”，即倡导写更少的代码，做更多的事情。它封装JavaScript常用的功能代码，');
INSERT INTO `t_vue_articles` VALUES (26, 'jQuery之属性&&CSS&&工具方法', 'JS代码function myf(){\n				alert(\"用来讲解isFunction函数的\");\n			}\n			$(function(){\n				// 一、$工具\n				//1.1 $.each()\n// 				var names = [\"张三\",\"李四\",\"王麻子\"];//定义JSON数组 [');
INSERT INTO `t_vue_articles` VALUES (27, 'cookie的基本使用', '前台代码如下后台代码如下String remember=req.getParameter(\"remember\");\nif(\"remember-me\".equals(remember)){\n	rememberMe(currentUser.getUserName(),currentUser.getPassword');
INSERT INTO `t_vue_articles` VALUES (28, '原生的jsp/servlet文件上传', '前台JSP后台代码public String save(HttpServletRequest request, HttpServletResponse response) {\n		try {\n			FileItemFactory factory = new DiskFileItemFactory();\n			');
INSERT INTO `t_vue_articles` VALUES (29, 'Shiro入门', '1. 什么是shiro   shiro是apache的一个开源框架，是一个权限管理的框架，实现 用户认证、用户授权。   spring中有spring security (原名Acegi)，是一个权限框架，它和spring依赖过于紧密，没有shiro使用简单。   shiro不依赖于spring，shiro不');
INSERT INTO `t_vue_articles` VALUES (30, 'Shiro与web容器集成', 'shiro-web.ini[main]\n#定义身份认证失败后的请求url映射，loginUrl是身份认证过滤器中的一个属性\nauthc.loginUrl=/login\n#定义角色认证失败后的请求url映射，unauthorizedUrl是角色认证过滤器中的一个属性\nroles.unauthorizedUrl=');
INSERT INTO `t_vue_articles` VALUES (31, 'Shiro认证以及盐加密', '1、pom依赖<dependency>\n  <groupId>org.apache.shiro</groupId>\n  <artifactId>shiro-core</artifactId>\n  <version>1.3.2</version>\n</dependency>\n\n<dependency>\n  <g');
INSERT INTO `t_vue_articles` VALUES (32, 'Shiro授权及注解式开发', '1、shiro授权重新自定义realm中的授权方法\n\n @Override\n    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {\n        System.out.println(\"');
INSERT INTO `t_vue_articles` VALUES (33, 'SpringBoot入门', 'SpringBoot是什么？    Spring Boot它本身并不提供Spring框架的核心特性以及扩展功能，只是用于快速、敏捷地开发新一代基于Spring框架的应用程序。也就是说，它并不是用来替代Spring的解决方案，而是和Spring框架紧密结合用于提升Spring开发者体验的工具。  同时它集成了大');
INSERT INTO `t_vue_articles` VALUES (34, 'SpringBoot之application.properties文件介绍', '内置属性注意：实际项目开发的时候Port=80，Context-path=/，以下配置只为讲解相关知识点Java代码@RestController\npublic class HelloController {\n    @RequestMapping(\"/hello\")\n    public String he');
INSERT INTO `t_vue_articles` VALUES (35, 'springboot之thymeleaf模板', '关于Thymeleaf的优点，我只说一条：它就是html页面。下面直接上代码相关pom依赖<dependency>\n            <groupId>org.springframework.boot</groupId>\n            <artifactId>spring-boot-start');
INSERT INTO `t_vue_articles` VALUES (36, 'springboot之freemarker模板', '学习网站：http://freemarker.foofun.cn/导入pom依赖<dependency>\n	<groupId>org.springframework.boot</groupId>\n	<artifactId>spring-boot-starter-freemarker</artifactId>\n');
INSERT INTO `t_vue_articles` VALUES (37, 'springboot之druid数据库连接池配置', '新建springboot项目druid学习地址https://github.com/alibaba/druid/tree/master/druid-spring-boot-starter相关pom依赖druid所需pom依赖<dependency>\n     <groupId>com.alibaba</gro');
INSERT INTO `t_vue_articles` VALUES (38, 'springboot之mybatis整合', 'springboot整合mybatis逆向生成插件相关pom依赖<!--更改springboot中的mysql版本，逆向生成不兼容高版本-->\n<mysql.version>5.1.44</mysql.version>\n\n<dependency>\n    <groupId>mysql</groupId>\n  ');
INSERT INTO `t_vue_articles` VALUES (39, 'springboot之pagehelper及log日志配置', '导入相关pom依赖<dependency>\n            <groupId>com.github.pagehelper</groupId>\n            <artifactId>pagehelper-spring-boot-starter</artifactId>\n            ');
INSERT INTO `t_vue_articles` VALUES (40, '论整理笔记的重要性', '昨天之前带的一个学生找我聊天，毕业到现在已经半年多了。从毕业到现在一直都是搞小程序开发。以下是聊天部分截图我想对从事软件行业的同学说，如果打算长久在软件这一行混，还是要养成做笔记/写博客/整理文档的习惯，我们在软件开发这一行，会做很多的项目，经历各种各样的问题，换不同的技术实现功能，当你熟练了这种，很容易就会');
INSERT INTO `t_vue_articles` VALUES (41, 'springboot之配置类', '注解标签     @Configuration    @Configuration底层是含有@Component ，所以@Configuration 具有和 @Component 的作用。  @Configuration可理解为用spring的时候xml里面的<beans>标签。  注：   1) 配置类必须');
INSERT INTO `t_vue_articles` VALUES (42, 'springboot之redis注解缓存', '常用缓存注解@Cacheable：作用是主要针对方法配置，能够根据方法的请求参数对其结果进行缓存 主要参数说明：   1) value ：   缓存的名称，在 spring 配置文件中定义，必须指定至少一个，  例如：@Cacheable(value=”mycache”) 或者 @Cacheable(valu');
INSERT INTO `t_vue_articles` VALUES (43, 'springboot之jpa支持', '导入相关pom依赖<dependency>\n            <groupId>org.springframework.boot</groupId>\n            <artifactId>spring-boot-starter-data-jpa</artifactId>\n        </d');
INSERT INTO `t_vue_articles` VALUES (44, 'quartz入门', '1. Quartz介绍   任务调度框架“Quartz”是OpenSymphony开源组织在Job scheduling领域又一个开源项目，是完全由java开发的一个开源的任务日程管理系统，   “任务进度管理器”就是一个在预先确定（被纳入日程）的时间到达时，负责执行（或者通知）其他软件组件的系统。     ');
INSERT INTO `t_vue_articles` VALUES (45, 'quartz之动态定时器实现', '基础环境配置注意：a、quartz调度框架是有内置表的进入quartz的官网http://www.quartz-scheduler.org/，点击Downloads，   下载后在目录\\docs\\dbTables下有常用数据库创建quartz表的脚本，例如：“tables_mysql.sql”     tab');
INSERT INTO `t_vue_articles` VALUES (46, 'Springboot+bootstrap界面版之增删改查及图片上传', '本次案例采取的是spring data jpa和bootstrap3来完成的，并没有使用github提供的分页插件Pagehelper，pagehelper与SSM配合分页在前面博客已经有所讲解。工程创建pom依赖<mysql.version>5.1.44</mysql.version>\n<version>$');
INSERT INTO `t_vue_articles` VALUES (47, 'idea之热部署插件jrebel的使用', ' 一个java web项目，在写的过程中我们需要不断调试，如果没有热部署，则我们每修改一次项目要重启一次，验证问题有没有得到解决。如果项目很小，启动只要几秒或十几秒，可能感觉影响不是很大；但当项目变大了，重启一次需要几十秒，几分钟，甚至十几分钟，每次修改后都需要重启无疑会严重影响我们的工作效率。       ');
INSERT INTO `t_vue_articles` VALUES (48, 'springboot+layui完成一个简单的博客管理功能', '本篇博客目的有两个：1、layui内置模块的开发2、layui第三方组件的平台的使用这个案例主要用到了三个内置模块，分别是表单、表格、弹出层。用到的第三方组件是layui的富文本编辑器。参考地址layui官网：https://www.layui.com/layui拓展后的富文本编辑器：https://fly.');
INSERT INTO `t_vue_articles` VALUES (49, '开发环境搭建', '1.JDK1.8下载与安装   1.1 下载地址：http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html   1.2 安装      1.3 JDK环境变量配置		JAVA_HOME/PATH/CL');
INSERT INTO `t_vue_articles` VALUES (50, 'mvc之DTD约束', '1. 什么是格式良好XML  1.1 有且只有一个根元素  1.2 XML标签大小写正确区分  1.3 正确使用结束标签  1.4 正确嵌套标签  1.5 使用了合法的标签名  1.6 定义有效的属性2. 在XML加入DTD声明   <!DOCTYPE root[]>3. 元素定义的语法   <!ELEMEN');
INSERT INTO `t_vue_articles` VALUES (51, 'struts2入门', '1.1、 环境搭建  1.1 jar  1.2 web.xml  1.3 struts.xml      struts.xml(核心配置文件)     目录结构： Struts.xml<include file=\"struts-default.xml\"></include>	<include file=\"st');
INSERT INTO `t_vue_articles` VALUES (52, 'struts之ognl', '1、OGNL的全称是Object Graph Navigation Language(对象图导航语言)，它是一种强大的表达式语言2、OgnlContext(ongl上下文)其实就是Map （教室、老师、学生）OgnlContext=根对象(1)+非根对象(N)非根对象要通过\"#key\"访问，根对象可以省略\"#');
INSERT INTO `t_vue_articles` VALUES (53, 'struts标签', '通用标签u 数据标签          property          set            scope=\"action\",action=request+actionContext          push            修改页面          param            <p');
INSERT INTO `t_vue_articles` VALUES (55, 'struts实现crud', '1、定义baseAction，存放结果码常量，请求、响应、上下文、公用的传值2、Struts标签的使用	s:iterator	S:action	S:url	S:form	s:textfield	S:select	S:radio	S:param	s:textarea相关代码public class Clazz ');
INSERT INTO `t_vue_articles` VALUES (56, 'struts之拦截器、上传下载', 'struts之拦截器注意：struts2.5之后的新特性，动态调用需要新增配置。<global-allowed-methods>regex:.*</global-allowed-methods> Jsp页面<form action=\"${pageContext.request.contextPath }/sy');
INSERT INTO `t_vue_articles` VALUES (57, 'Maven介绍', '1. Maven简单介绍   Apache Maven是个项目管理和自动构建工具，基于项目对象模型（POM）的概念。   作用：完成项目的相关操作，如：编译，构建，单元测试，安装，网站生成和基于Maven部署项目。2. 什么是自动构建工具？  2.1 *.java->*.class->run      方式一');
INSERT INTO `t_vue_articles` VALUES (58, 'Hibernate入门', '1、导入pom.xml<properties>		<project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>		<maven.compiler.source>1.8</maven.compiler.source>		<maven.com');
INSERT INTO `t_vue_articles` VALUES (59, 'hibernate之主键生成策略', '1、hibernateutil工具类public class HibernateUtils {\n	private static SessionFactory sessionFactory;\n//	存放当前会话\n	private static ThreadLocal<Session> threadLocal =');
INSERT INTO `t_vue_articles` VALUES (60, 'hibernate之加载策略', '1、hibernate对象状态简介图解如下： 临时态：刚创建出来的对象/被删除的对象持久态：从数据库读取出来的对象/new出来的对象保存到数据库后。一级缓存存放着对象的快照游离态：一级缓存中可能存在可能不存在的对象一级缓存：被称为session级别的缓存，session代表着一次会话，一次数据库的操作。里面放');
INSERT INTO `t_vue_articles` VALUES (61, 'hibernate关联关系', '一对多订单表、订单项-- 订单表(主表)\ncreate table t_hibernate_order\n(\n  order_id int primary key auto_increment,\n  order_no varchar(50) not null\n);\n\n\n-- 订单项表(从表)\ncreate ta');
INSERT INTO `t_vue_articles` VALUES (62, 'hibernate之HQL', 'hql和sql区别/异同HQLSQL 类名/属性 表名/列名 区分大小写,关键字不区分大小写不区分大小写别名别名?，从下标0开始计算位置(hibernate5之后不支持)?，从顺序1开始计算位置:命名参数        不支持:命名参数面向对象的查询语言面向结构查询语言 处理返回的结果集单个对象      s');
INSERT INTO `t_vue_articles` VALUES (63, 'hibernate之二级缓存', 'Map集合模拟缓存原理 Ehcache配置文件介绍<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<ehcache xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n         xsi:noNamespaceSche');
INSERT INTO `t_vue_articles` VALUES (64, 'spring之IOC', '1. 什么是spring，它能够做什么?   Spring是一个开源框架，它由Rod Johnson创建。它是为了解决企业应用开发的复杂性而创建的。   Spring使用基本的JavaBean来完成以前只可能由EJB完成的事情。   然而，Spring的用途不仅限于服务器端的开发。从简单性、可测试性和松耦合的');
INSERT INTO `t_vue_articles` VALUES (65, 'spring之AOP', 'AOP中关键性概念 连接点(Joinpoint)：程序执行过程中明确的点，如方法的调用，或者异常的抛出.目标(Target)：被通知(被代理)的对象注1：完成具体的业务逻辑通知(Advice)：在某个特定的连接点上执行的动作，同时Advice也是程序代码的具体实现，例如一个实现日志记录的代码(通知有些书上也称');
INSERT INTO `t_vue_articles` VALUES (66, 'SVN介绍', 'svn服务器安装第一个用于eclipse继承第二个单独的svn客户端第三个视图化的svn服务端 1、安装VisualSVN-Server-3.9.1-x64.msi 2、在repositories右键创建仓库3、在users上可以创建用户，可以访问对应的仓库4、点击“test”右键，可以查看到仓库地址5、粘贴');
INSERT INTO `t_vue_articles` VALUES (67, 'webservice之axis2', 'Jdk实现服务端相关代码相关代码测试http://192.168.43.37:8080/score?wsdlJava EE界面测试 客户端在项目的src下创建服务端代码Wsimport -keep ..?wsdl 根据wsdl文件开发代码 手机归属地查询http://www.webxml.com.cn/zh_');
INSERT INTO `t_vue_articles` VALUES (68, 'redis介绍', '简介https://redis.io/ 介绍Redis之前，先了解下NoSQL （Not noly SQL）不仅仅是SQL属于非关系型数据库；Redis就属于非关系型数据库传统的Mysql ,oracle ,sql server 等 都是关系型数据库 为什么需要NoSQL，主要应对以下问题，传统关系型数据库力');
INSERT INTO `t_vue_articles` VALUES (69, 'IDEA简介', '下载与安装https://www.jetbrains.com  不装任何插件收费版破解参考：https://blog.csdn.net/liuhePPPP/article/details/84447011-server\n-Xms128m\n-Xmx512m\n-XX:ReservedCodeCacheSize=2');
INSERT INTO `t_vue_articles` VALUES (70, 'IDEA的setting介绍', '进入设置页面，从上到下，主要是 外观和行为，快捷键，编辑，插件，版本控制，构建执行部署，语言和框架，工具的设置； 主题设置调节背景色 设置鼠标悬浮提示再Eclipse里，我们鼠标移动到一个类上，会提示这个类的文档解释信息；IDEA里默认不会这样，我们需要设置下；Editor->General  这里的话 我们');
INSERT INTO `t_vue_articles` VALUES (71, 'IDEA项目创建', 'Java project创建 什么都不勾选，next->finish即可 静态web项目创建 Next-->finish即可创建html右击运行如下： 新建普通动态web项目  开始配置tomcat点击 +  添加新配置 拉下最下方 选更多找到Tomcat Server  选Local对Tomcat取名 我们');
INSERT INTO `t_vue_articles` VALUES (72, 'Mybatis入门', 'mybatis之idea的maven项目搭建 与eclipse不同\n<web-app xmlns=\"http://xmlns.jcp.org/xml/ns/javaee\"\n\n     xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n\n     xsi');
INSERT INTO `t_vue_articles` VALUES (73, 'mybatis之动态sql和分页', '1.mybatis动态sql    1.1 if    1.2 trim     1.3 foreach      1.4 其他       choose/set/where2.模糊查询（3种方式）     2.1 参数中直接加入%%    2.2 使用${...}代替#{...}（不建议使用该方式，有SQL');
INSERT INTO `t_vue_articles` VALUES (74, 'mybatis与spring集成', '1.添加相关依赖      注：spring 5.0.1.RELEASE有冲突   1.1 添加spring相关依赖(5.0.2.RELEASE)       spring-core       spring-beans       spring-context       spring-orm       ');
INSERT INTO `t_vue_articles` VALUES (75, 'mybatis整合Redis实现二级缓存', '1. redis常用类  1.1 Jedis      jedis就是集成了redis的一些命令操作，封装了redis的java客户端    1.2 JedisPoolConfig      Redis连接池  1.3 ShardedJedis      基于一致性哈希算法实现的分布式Redis集群客户端  ');
INSERT INTO `t_vue_articles` VALUES (76, 'mybatis整合Ehcache实现二级缓存', '1. 为什么需要缓存   拉高程序的性能2. 什么样的数据需要缓存   很少被修改或根本不改的数据     业务场景比如：耗时较高的统计分析sql、电话账单查询sql等3. ehcache是什么   Ehcache 是现在最流行的纯Java开源缓存框架，配置简单、结构清晰、功能强大      注1：本章介绍的');
INSERT INTO `t_vue_articles` VALUES (77, 'mybatis之关联关系', '1.将数据表导入数据库中2.通过mybatis-generator插件生成dao、mapper、model   1）配置mybatis-generator插件生成文件位置   2）修改generatorConfig.xml配置文件的生成目录(mapper和model)及对应生成关系3.修改Customer、O');
INSERT INTO `t_vue_articles` VALUES (78, 'springmvc入门', '1. 什么是springMVC?   Spring Web MVC是一种基于Java的实现了MVC设计模式的、请求驱动类型的、轻量级Web框架。2. SpringMVC处理请求的流程  2.1 首先用户发送请求-->DispatherServlet  2.2 DispatcherServlet-->Handl');
INSERT INTO `t_vue_articles` VALUES (79, 'springmvc之文件上传', '相关pom依赖<dependency>\n      <groupId>commons-fileupload</groupId>\n      <artifactId>commons-fileupload</artifactId>\n      <version>1.3.3</version>\n</dependen');
INSERT INTO `t_vue_articles` VALUES (80, 'springboot相对SSM的开发相关场景的替代方式', '1、监听类的替代监听类@WebListener\npublic class InitDataListener implements ServletContextListener {\n    @Override\n    public void contextInitialized(ServletContextEv');
INSERT INTO `t_vue_articles` VALUES (81, '纵向越权与横向越权的处理方案', '问题描述假设张三是超级管理员、李四和王五是普通系统用户。纵向越权：指的是，当李四或者王五登录系统后，可以操作张三用户才能操作的服务器请求。（李四或王五看不到操作按钮，但是知道对应按钮的URL请求地址和参数名）横向越权：指的是，当李四登录系统后，可以修改王五用户的个人信息处理方案：1、常规的处理方案使用权限框架');
INSERT INTO `t_vue_articles` VALUES (82, '系统升级方案', '当我们上线一个系统后，后续通常还需要对该系统做对应的升级，或者通过补丁包修复现网上的bug，本篇博客内容是帮助大家了解升级系统的流程。第一步：做好备份备份分两块；一是将Linux上的整个项目文件夹备份，命令如下tar -cvf p1_20190305.jar p1这样的话会把Linux上tomcat下的web');
INSERT INTO `t_vue_articles` VALUES (83, 'springboot项目部署', '本篇博客跟大家聊聊springboot项目的部署方式方式1：jar包部署第一步：打jar包第二步：在cmd命令窗口输入命令java -jar E:\\workspace\\ideaProjects\\test\\springboot05\\target\\springboot05-0.0.1-SNAPSHOT.jar结果');
INSERT INTO `t_vue_articles` VALUES (84, 'springboot监听类war形式部署问题', '本人在以war包形式部署springboot项目的时候踩到的一个坑问题说明：springboot项目在开发环境启动时是毫无问题的，然而一打war包，tomcat控制台一直报错，监听类中的service始终是null，也就是说@autowise注解失效了。通过查找资料，解决方法如下@WebListener\npu');
INSERT INTO `t_vue_articles` VALUES (85, 'jQuery之筛选&文档处理', 'css代码.big{\n				width: 400px;\n				height: 400px;\n				background: yellow;\n				position: absolute;\n				top:50px;\n				left: 50px;			}\n			.small{\n				width: 200');
INSERT INTO `t_vue_articles` VALUES (86, 'jQuery之事件&动画', '图解省略。。。');
INSERT INTO `t_vue_articles` VALUES (87, 'jQuery之插件机制', '1. 插件机制简介就是用jquery写的一些js代码，他能实现具体的功能，比如上传图片，弹出遮罩层，直接将js文件引入进页面就可以调用了，达成快速开发的效果。2. json的三种格式  2.1 对象      {sid:\'s01\',sname:\'zs\'}  2.2 列表/数组      [1,3,4,5]  ');
INSERT INTO `t_vue_articles` VALUES (88, 'Bootstrap之入门&全局CSS之概览&栅格系统', '重点学会栅格布局效果图如下图片总结demo1.jsp ');
INSERT INTO `t_vue_articles` VALUES (89, 'Bootstrap之全局CSS之排版&代码&表格', '表格是重点图片预览demo2.jsp ');
INSERT INTO `t_vue_articles` VALUES (90, 'Bootstrap之全局CSS之表单&按钮&图片&辅助类&响应式工具', '表单是重点图片预览demo3.jsp ');
INSERT INTO `t_vue_articles` VALUES (91, 'Bootstrap之组件图标&下拉菜单&按钮组&按钮式下拉菜单', '图标和下拉菜单是重点图片预览demo4.jsp ');
INSERT INTO `t_vue_articles` VALUES (92, 'Bootstrap之组件输入框组&导航&导航条&路径导航&分页&标签&徽章', '导航是重点图片预览demo5.jsp ');
INSERT INTO `t_vue_articles` VALUES (93, 'Bootstrap之组件巨幕&页头&缩略图&警告框&进度条&媒体对象&列表组&面板&嵌入内容', '缩略图、超链接列表、面板重要图片预览demo6.jsp ');
INSERT INTO `t_vue_articles` VALUES (94, 'Bootstrap之插件模态框&工具提示&标签页&滚动监听', '模态框重要图片预览demo7.jsp ');
INSERT INTO `t_vue_articles` VALUES (95, 'Bootstrap之插件弹出框&警告框&按钮&折叠&轮播&附加导航', '手风琴和轮播重要图片预览demo8.jsp ');
INSERT INTO `t_vue_articles` VALUES (96, 'Layui简介以及基本使用', 'layui介绍layui，是一款采用自身模块规范编写的前端 UI 框架，遵循原生 HTML/CSS/JS 的书写与组织形式，门槛极低，拿来即用。其外在极简，却又不失饱满的内在，体积轻盈，组件丰盈，从核心代码到 API 的每一处细节都经过精心雕琢，非常适合界面的快速开发。layui 首个版本发布于2016年秋，');
INSERT INTO `t_vue_articles` VALUES (97, 'Layui页面元素之布局、颜色、图标', '本篇博客重点掌握layui的栅格布局内置提供的颜色选择，以及图标选择也最好了解下，这是能够让界面更加美观demo2.html ');
INSERT INTO `t_vue_articles` VALUES (98, 'Layui页面元素之动画、按钮、表单', '按钮和表单重点掌握demo3.html ');
INSERT INTO `t_vue_articles` VALUES (99, 'Layui页面元素之导航、面包屑', '导航和面包屑都很重要demo4.html ');
INSERT INTO `t_vue_articles` VALUES (100, 'Layui页面元素之选项卡、进度条、面板、表格 、徽章、时间线、辅助元素', '选项卡、面板、时间线很重要demo5.html ');
INSERT INTO `t_vue_articles` VALUES (101, 'Layui内置模块之弹出层、日期和时间选择、即时通讯、分页', '弹出层和分页很重要demo6.html ');
INSERT INTO `t_vue_articles` VALUES (102, 'Layui内置模块之数据表格、表单、文件上传', '表格、表单、文件上传都很重要，文件上传采用的ajax提交，不是表单提交demo7.html ');
INSERT INTO `t_vue_articles` VALUES (103, 'Layui内置模块之评分、轮播、流加载、工具集、代码修饰器', '正常情况下只有评分和轮播能用得上demo8.html ');
INSERT INTO `t_vue_articles` VALUES (104, '关于Java中的23种设计模式简介', '简介设计模式（Design Pattern），是一套被反复使用、多数人知晓的、经过分类编目的、代码设计经验的总结。\n\n使用设计模式是为了可重用代码、让代码更容易被他人理解、保证代码可靠性。 设计模式于己、于他人、于系统都是多赢的，设计模式使代码编制真正工程化。设计模式是软件工程的基石，如同大厦的一块块砖石一样');
INSERT INTO `t_vue_articles` VALUES (105, '单例模式Singleton（创建模式）', '定义:Singleton模式主要作用是保证在Java应用程序中，一个类Class只有一个实例存在。 在很多操作中，比如建立目录 数据库连接都需要这样的单线程操作。还有, singleton能够被状态化; 这样，多个单态类在一起就可以作为一个状态仓库一样向外提供服务，比如，你要论坛中的帖子计数器，每次浏览一次需');
INSERT INTO `t_vue_articles` VALUES (106, '工厂模式Factory（创建模式）', '定义:提供创建对象的接口.\n为何使用?工厂模式是我们最常用的模式了,著名的Jive论坛 \n,就大量使用了工厂模式，工厂模式在Java程序系统可以说是随处可见。\n为什么工厂模式是如此常用？因为工厂模式就相当于创建实例对象的new，我们经常要根据类Class生成实例对象，如A \na=new A() \n工厂模式也是');
INSERT INTO `t_vue_articles` VALUES (107, '抽象工厂模式abstract factory（创建模式）', '延续上一篇博客，暂无更好的案例，先凑合看，后续会完善。抽象工厂工厂模式中有: 工厂方法(Factory Method) \n抽象工厂(Abstract Factory).这两个模式区别在于需要创建对象的复杂程度上。如果我们创建对象的方法变得复杂了,如上面工厂方法中是创建一个对象Sample,如果我们还有新的产品');
INSERT INTO `t_vue_articles` VALUES (108, '原型模式Prototype（创建模式）', '定义:用原型实例指定创建对象的种类,并且通过拷贝这些原型创建新的对象.\nPrototype模式允许一个对象再创建另外一个可定制的对象，根本无需知道任何如何创建的细节,工作原理是:通过将一个原型对象传给那个要发动创建的对象，这个要发动创建的对象通过请求原型对象拷贝它们自己来实施创建。\n如何使用?因为Java中的');
INSERT INTO `t_vue_articles` VALUES (109, '建造者模式Builder（创建模式）', '一、前言   今天我们讨论一下Builder建造者模式，这个Builder，其实和模板模式非常的像，但是也有区别，那就是在模板模式中父类对子类中的实现进行操作，在父类之中进行一件事情的处理，但是在Builder模式之中，父类和子类都不用关心怎么处理，而是用另一个类来完成对这些方法的有机组合，这个类的职责就是‘');
INSERT INTO `t_vue_articles` VALUES (110, '外观模式Facade（结构模式）', 'Facade的定义:  为子系统中的一组接口提供一个一致的界面.\nFacade一个典型应用就是数据库JDBC的应用,如下例对数据库的操作:\n\n\n\n\npublic class DBCompare {\n　　Connection conn = null;　　PreparedStatement prep = \nnul');
INSERT INTO `t_vue_articles` VALUES (111, '代理模式proxy（结构模式）', '一、前言   代理模式或许我们都听说过，至少知道代理（Proxy）这个东西的，否则看这篇博客也没任何意义的。什么叫做代理，代理是代替服务器去接受请求者的请求的中间人。我们也听说过代理服务器这个东西，它的作用就是帮助客户端去请求客户端想要的资源，为什么要通过这个代理呢，那是因为客户端直接去访问服务器会被拒绝（防');
INSERT INTO `t_vue_articles` VALUES (112, '适配器模式Adapter（结构模式）', '一、适配器模式介绍  适配器模式分为两类，所谓“适配”就是适当的配合或者恰当的配合，想一下电源的适配器，完成的作用是将交流电220V转化成不同的直流电压，来对手机、电脑、台灯等充电，如果没有这些适配器，我们的设备早就着火了或者报废了，是一件很可怕的事情，那么适配器就是起到一个转换的作用，将物质（数据）由某种形');
INSERT INTO `t_vue_articles` VALUES (113, 'mvc之通用分页', '   通用分页核心思路   将上一次查询请求再发一次，只不过页码变了1. PageBean   分页三要素    page        页码        视图层传递过来   rows        页大小      视图层传递过来   total       总记录数    后台查出来   paginat');
INSERT INTO `t_vue_articles` VALUES (114, '组合模式Composite（结构模式）', '一、前言  关于Composite模式，其实就是组合模式,又叫部分整体模式，这个模式在我们的生活中也经常使用，比如说如果读者有使用Java的GUI编写过程序的，肯定少不了定义一些组件，初始化之后，然后使用容器的add方法，将这些组件有顺序的组织成一个界面出来；或者读者如果编写过前端的页面，肯定使用过<div>');
INSERT INTO `t_vue_articles` VALUES (115, '装饰器模式Decorator（结构模式）', '一、前言   装饰器模式也是一种非常重要的模式，在Java以及程序设计中占据着重要的地位。比如Java的数据流处理，我们可能看到数据流经过不同的类的包装和包裹，最终形成了我们需要的流，比如说从二进制到字节流再到字符流，这中间其实就是经过了装饰器的处理，在不改变原来的数据的基础上，加入属于自己的特征，就像是在一');
INSERT INTO `t_vue_articles` VALUES (116, '桥接模式Bridge（结构模式）', '一、前言  写到这里，基本上就是对前面几种模式的扩展和区别了，可以看到我们前面的几种模式，很多时候都出现了重叠，这里要分清一个概念，模式并不是完全隔离和独立的，有的模式内部其实用到了其他模式的技术，但是又有自己的创新点，如果一味地认为每个模式都是独一无二，与其他模式完全区别的，这是一种误区，因此，这里又看到了');
INSERT INTO `t_vue_articles` VALUES (117, '享元模式Flyweight（结构模式）', '一、前言    享元（FlyWeight）模式顾名思义，既是轻量级的，原因就是享元，共享元素，这里的元素指的是对象。如何共享对象，那就是在检测对象产生的时候，如果产生的是同一个对象，那么直接使用已经产生的，听起来很像是单例模式，其实享元模式的内部实现就是很类似与单例模式的懒汉模式。享元的好处就是，在某些场景下');
INSERT INTO `t_vue_articles` VALUES (118, '模板模式Template（行为模式）', '一、前言  前面我们讲过了迭代器模式和适配器模式，对于这两个‘器’，我们要有深刻的理解，理解何以称得上‘器’，工具也，拿来让我们使用的，人类和动物的最大区别是使用工具，虽然我对这个不是很同意，但是工具的重要性是毫无争议的，善假于物才能走到更高的地方去。现在开始，我们好好地看一看设计模式，其实无外乎接口、抽象类');
INSERT INTO `t_vue_articles` VALUES (119, '策略模式Strategy（行为模式）', '一、前言  下面我们看一下策略模式，策略模式其实比较简单，相信大家都使用过，只不过不清楚而已，其实就是使用抽象类或者接口，定义一个方法，然后子类来实现相应的方法，之后通过一个新的类来使用这个已经定义好的组件，使用委托（组合）的方式，让定义的接口根据多态来灵活的使用相应的实现方法，最终完成一定的功能。和Buil');
INSERT INTO `t_vue_articles` VALUES (120, '备忘录模式Memento（行为模式）', '备忘录模式概念性的东西理解起来简单，但是易忘，后续看框架底层代码，继续加深理解一、前言  备忘录模式用于保存和恢复对象的状态，相信大家看过我前面的拙作就会想到原型模式也能保存一个对象在某一个时刻的状态，那么两者有何不同的呢？原型模式保存的是当前对象的所有状态信息，恢复的时候会生成与保存的对象完全相同的另外一个');
INSERT INTO `t_vue_articles` VALUES (121, '观察者模式Observer（行为模式）', '一、前言  观察者模式其实最好的名称应该是“发布订阅”模式，和我们现在大数据之中的发布订阅方式比较类似，但是也有区别的地方，在上一个设计模式，我们学习的是仲裁者模式，其中当控件的状态发生改变的时候就会向仲裁者发出信息，让仲裁者进行仲裁，这其实和发布订阅非常的类似，但是用处是不一样的，仲裁者模式是用来解除复杂对');
INSERT INTO `t_vue_articles` VALUES (122, '责任链模式Chain of Responsibility（行为模式）', '一、前言   责任链（chain of responsibility）模式很像异常的捕获和处理，当一个问题发生的时候，当前对象看一下自己是否能够处理，不能的话将问题抛给自己的上级去处理，但是要注意这里的上级不一定指的是继承关系的父类，这点和异常的处理是不一样的。所以可以这样说，当问题不能解决的时候，将问题交给');
INSERT INTO `t_vue_articles` VALUES (123, '命令模式Command（行为模式）', '一、前言  命令也是类，将命令作为一个类来保存，当要使用的时候可以直接拿来使用，比如脚本语言写出的脚本，只需要一个命令就能执行得到我们想要的需要操作很长时间才能得到的结果。这是一个非常有意思的模式，将操作的步骤保存下来，本例之中我们使用java自带的GUI来画图，然后将画图的过程（在哪个地方画了什么东西）保存');
INSERT INTO `t_vue_articles` VALUES (124, '状态模式State（行为模式）', '一、前言    状态模式在某些场合中使用是非常方便的，什么叫做状态，如果大家学过《编译原理》就会明白DFA M和NFA M，在确定有限状态机和非确定有限状态机中，状态就是最小的单元，当满足某种条件的时候，状态就会发生改变，我们可以把时间中的一个时刻当做一个状态，那么其实整个社会都是有状态组成的，前一时刻到下一');
INSERT INTO `t_vue_articles` VALUES (125, '仲裁者模式Mediator（行为模式）', '一、前言    Mediator模式又称为仲裁者模式或者中介者模式，所起的作用是仲裁和中介，帮助其它类之间进行交流。在仲裁者模式之中，我们要明确两个概念，那就是仲裁者（Mediator）和组员（Colleague），不管组员有什么事情，都会向仲裁者汇报，仲裁者会根据全局的实际情况向其他Colleague作出指');
INSERT INTO `t_vue_articles` VALUES (126, '解释器模式Interpreter（行为模式）', '一、前言    这是我们23个设计模式中最后一个设计模式了，大家或许也没想到吧，竟然是编译原理上的编译器，这样说可能不对，因为编译器分为几个部分组成呢，比如词法分析器、语法分析器、语义分析器、中间代码优化器以及最终的最终代码生成器。而这个解释器其实就是完成了对语法的解析，将一个个的词组解释成了一个个语法范畴，');
INSERT INTO `t_vue_articles` VALUES (127, '访问者模式Visitor（行为模式）', '一、前言   什么叫做访问，如果大家学过数据结构，对于这点就很清晰了，遍历就是访问的一般形式，单独读取一个元素进行相应的处理也叫作访问，读取到想要查看的内容+对其进行处理就叫做访问，那么我们平常是怎么访问的，基本上就是直接拿着需要访问的地址（引用）来读写内存就可以了。   为什么还要有一个访问者模式呢，这就要');
INSERT INTO `t_vue_articles` VALUES (128, '设计模式总结', '一、设计模式分类   2.1、按类型分为：     创建型模式：工厂方法、抽象工厂模式、原型模式、单例模式、建造者模式     结构型模式：适配器、组合模式、装饰器模式、桥接模式、外观模式、FlyWeight模式、代理模式     行为型模式：迭代器、模板方法、策略模式、仲裁者模式、访问者模式、命令模式、解释');
INSERT INTO `t_vue_articles` VALUES (129, '迭代器模式iterator（行为模式）', '一、前言  设计模式有很多，最典型的是GoF的23种设计模式，听起来很多，其实大部分我们都是见过的，按照常见度来分，最常用的差不多是六七个吧，因此，我们在学习的时候应该有轻重缓急之分，不能一视同仁，而应该抓住重点，将一些最常用的设计模式吃透了，那么我们在遇到一个实际问题的时候就能根据问题的需要来进行相应的取舍');
INSERT INTO `t_vue_articles` VALUES (130, 'spring data JPA中@Modifying 注解完成新增操作', '错误现象描述dao层代码如下@Modifying\n    @Query(value = \"insert into t_p5_blog_link_his(click_hit, release_time, url, source,title) \" +\n            \"select click_hit, ');
INSERT INTO `t_vue_articles` VALUES (135, 'springboot Date类型对象绑定', '这个困扰我已久的问题，今天终于解决了，之前看过好多博客，屡试不爽，今天终于解决了，在这里分享一下解决方案。 首先看 @RequestBody，当前端使用ajax，传输json数据的时候，只需要在实体的 Date属性上加 @JsonFormat即可，因为springboot默认使用Jackson处理json//');
INSERT INTO `t_vue_articles` VALUES (136, '关于spring-data-jpa的排序问题', '废话不多说，直接上代码，JPA通用排序工具类public class SortDto {\n\n    //排序方式\n    private String orderType;\n\n    //排序字段\n    private String orderField;\n\n    public String getOrd');
INSERT INTO `t_vue_articles` VALUES (137, '多个SpringBoot项目部署在同一个tomcat容器报错', '异常信息如下org.springframework.jmx.export.UnableToRegisterMBeanException: Unable to register MBean [com.alibaba.druid.filter.stat.StatFilter@7cbac5a3] with key ');
INSERT INTO `t_vue_articles` VALUES (138, 'SpringCloud简介', 'Spring Cloud是一系列框架的有序集合。它利用Spring Boot的开发便利性巧妙地简化了分布式系统基础设施的开发，如服务发现注册、配置中心、消息总线、负载均衡、断路器、数据监控等，都可以用Spring Boot的开发风格做到一键启动和部署。Spring Cloud并没有重复制造轮子，它只是将目前各');
INSERT INTO `t_vue_articles` VALUES (139, 'SpringCloud入门案例', '总纲本篇博客内容较多，请大家仔细阅读总纲前面有学习过用springboot开发项目，使用springboot开发项目的好处在于能够快速的开发单体项目，很多框架整合无需配置，极大的提高了开发效率。使用springboot开发项目依然属于传统的开发模式，所有的代码都写在一个工程内。Mvc模式相信已经被大家所熟知。');
INSERT INTO `t_vue_articles` VALUES (140, '服务治理组件Eureka简介', 'Eureka github 地址： https://github.com/Netflix/eurekaEureka简介：Eureka是Netflix开发的服务发现框架，本身是一个基于REST的服务，主要用于定位运行在AWS域中的中间层服务，以达到负载均衡和中间层服务故障转移的目的。SpringCloud将它集');
INSERT INTO `t_vue_articles` VALUES (141, 'Eureka的初步使用', '搭建Eureka服务注册中心前面说过eureka是c/s模式的  server服务端就是服务注册中心，其他的都是client客户端，服务端用来管理所有服务，客户端通过注册中心，来调用具体的服务；我们先来搭建下服务端，也就是服务注册中心；新建 module   microservice-eureka-serve');
INSERT INTO `t_vue_articles` VALUES (142, 'Eureka高可用集群配置及自我保护机制', '高可用集群配置当注册中心扛不住高并发的时候，这时候 要用集群来扛；我们再新建两个module  microservice-eureka-server-2002  microservice-eureka-server-20031、pom.xml 把依赖加下；<dependencies>\n        <dep');
INSERT INTO `t_vue_articles` VALUES (143, '微服务调用Ribbon', '简介前面讲了eureka服务注册与发现，但是结合eureka集群的服务调用没讲。这里的话 就要用到Ribbon，结合eureka，来实现服务的调用；Ribbon是Netflix发布的负载均衡器，它有助于控制HTTP和TCP的客户端的行为。为Ribbon配置服务提供者地址后，Ribbon就可基于某种负载均衡算法');
INSERT INTO `t_vue_articles` VALUES (144, 'Ribbon的负载均衡', '前面搭建了初步例子，但是还没实现真正负载均衡，我们这里要先搞三个服务提供者集群，然后才能演示负载均衡，以及负载均衡策略；新建项目microservice-student-provider-1002，microservice-student-provider-1003pom.xml，application.ym');
INSERT INTO `t_vue_articles` VALUES (145, 'Feign简介及应用', '简介声明式服务调用Feign简单介绍下；Feign是一个声明式的Web Service客户端，它使得编写Web Serivce客户端变得更加简单。我们只需要使用Feign来创建一个接口并用注解来配置它既可完成。它具备可插拔的注解支持，包括Feign注解和JAX-RS注解。Feign也支持可插拔的编码器和解码器');
INSERT INTO `t_vue_articles` VALUES (146, 'Hystrix断路器简介及应用', '简介Hystrix断路器简介hystrix对应的中文名字是“豪猪”，豪猪周身长满了刺，能保护自己不受天敌的伤害，代表了一种防御机制，这与hystrix本身的功能不谋而合，因此Netflix团队将该框架命名为Hystrix，并使用了对应的卡通形象做作为logo。在一个分布式系统里，许多依赖不可避免的会调用失败，');
INSERT INTO `t_vue_articles` VALUES (147, 'Hystrix服务监控Dashboard', 'Hystrix服务监控Dashboard仪表盘Hystrix提供了 准实时的服务调用监控项目Dashboard，能够实时记录通过Hystrix发起的请求执行情况，可以通过图表的形式展现给用户看。我们新建项目：microservice-student-consumer-hystrix-dashboard-90加');
INSERT INTO `t_vue_articles` VALUES (148, 'Hystrix集群监控turbine', '前面Dashboard演示的仅仅是单机服务监控，实际项目基本都是集群，所以这里集群监控用的是turbine。turbine是基于Dashboard的。先搞个集群；再microservice-student-provider-hystrix-1004项目的基础上再搞一个microservice-student-');
INSERT INTO `t_vue_articles` VALUES (149, 'Feign、Hystrix整合&之服务熔断服务降级彻底解耦及超时设置', 'Feign、Hystrix整合前面的代码，用@HystrixCommand fallbackMethod是很不好的，因为和业务代码耦合度太高，不利于维护，所以需要解耦，这我们讲下Feign Hystrix整合。1、microservice-student-provider-hystrix-1004项目修改我们');
INSERT INTO `t_vue_articles` VALUES (150, 'Zuul API路由网关服务', '简介Zuul API路由网关服务简介请看上图，这里的API 路由网关服务 由Zuul实现，主要就是对外提供服务接口的时候，起到了请求的路由和过滤作用，也因此能够隐藏内部服务的接口细节，从来有利于保护系统的安全性；路由配置Zuul 路由配置我们新建一个module  microservice-zuul-3001');
INSERT INTO `t_vue_articles` VALUES (151, 'SpringCloud小结', '花了一周时间学习了下SpringCloud，这里做一个小结。各组件SpringCloud主要包括以下几块 核心组件Eureka：服务提供者注册中心；Ribbon服务消费者相关组件，可直接通过服务提供者名称，调用提供者所注册的服务，摒弃IP+Port的方式；Hystrix：服务提供者组件，主要作用服务熔断服务降');
INSERT INTO `t_vue_articles` VALUES (152, '常用网站', '工作相关Power Designerhttps://blog.csdn.net/sinat_34104446/article/details/79885141亿图图示（图片模板较多）http://www.xue51.com/soft/11714.htmlSojsonhttps://www.sojson.com');
INSERT INTO `t_vue_articles` VALUES (153, '安装油猴及浏览器视频倍数播放插件图解', '油猴览器视频倍数播放插件');
INSERT INTO `t_vue_articles` VALUES (154, '支付宝简介', '支付简介https://open.alipay.com应用场景：csdn的VIP充值开发者入驻开发者中心，有开发者接入，比如我们可以接入网页&移动应用快速支付，但是个人无法申请，需要有企业营业执照，所以我们教学的话，直接是右侧开发服务，研发服务，用到里面的沙箱模拟；在线支付流程数字签名https://docs');
INSERT INTO `t_vue_articles` VALUES (155, '支付宝官方demo', '官方demo运行新建工程按顺序拷入lib/config/Jsp，运行项目沙箱环境配置密钥生成工具需要下载下下载下来后解压通过此页面填写官方demo配置类再次运行项目利用沙箱支付宝，先买家账号登录付款，成功后会发现对应金额减少；再利用商家账号登录，会发现金额增加；各自账号会出现对应的账单信息。支付宝支付接口讲解');
INSERT INTO `t_vue_articles` VALUES (156, 'tomcat多域名配置及支付宝支付通知', 'tomcat多域名配置首先在虚拟机中部署下支付宝官方提供的工程demo然后在已备份的顶级域名下添加二级域名进行ip端口映射在虚拟机中tomcat下修改server,xml保留原有配置增加两个host节点,新增以下配置<Host name=\"alipayTest.javaxl.com\"  appBase=\"/z');
INSERT INTO `t_vue_articles` VALUES (157, '支付宝其他常用接口', '交易查询参考官方demo中alipay.trade.query.jsp支付退款参考官方demo中alipay.trade.refund.jsp退款查询参考官方demo中alipay.trade.fastpay.refund.query.jsp交易关闭参考官方demo中alipay.trade.close.js');
INSERT INTO `t_vue_articles` VALUES (158, '水电费', '水电费');
INSERT INTO `t_vue_articles` VALUES (159, '是是是', '收拾收拾');
INSERT INTO `t_vue_articles` VALUES (160, '是是是', '是是是');
INSERT INTO `t_vue_articles` VALUES (161, '是是是', '三四十万');
INSERT INTO `t_vue_articles` VALUES (162, '是是是', '我问问');
INSERT INTO `t_vue_articles` VALUES (163, '是是是', '事实上娃娃');
INSERT INTO `t_vue_articles` VALUES (164, 'sloe', '搜索引擎');
INSERT INTO `t_vue_articles` VALUES (165, 'NDF', '英雄联盟');
INSERT INTO `t_vue_articles` VALUES (166, 'sole', '暑假作业');
INSERT INTO `t_vue_articles` VALUES (167, '熊出没', '熊打光头强');
INSERT INTO `t_vue_articles` VALUES (168, '猫和老鼠', '汤姆和杰瑞');
INSERT INTO `t_vue_articles` VALUES (170, '斗罗大陆003', '123456789');

-- ----------------------------
-- Table structure for t_vue_tree_node
-- ----------------------------
DROP TABLE IF EXISTS `t_vue_tree_node`;
CREATE TABLE `t_vue_tree_node`  (
  `tree_node_id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_node_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tree_node_type` int(11) NOT NULL,
  `parent_node_id` int(11) NULL DEFAULT NULL,
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` int(11) NULL DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tree_node_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_vue_tree_node
-- ----------------------------
INSERT INTO `t_vue_tree_node` VALUES (1, '系统管理', 1, NULL, NULL, 1, 'el-icon-setting');
INSERT INTO `t_vue_tree_node` VALUES (2, '用户管理', 2, 1, '/sys/VuexPage1', 2, 'el-icon-user');
INSERT INTO `t_vue_tree_node` VALUES (3, '角色管理', 2, 1, '/sys/VuexPage2', 3, '');
INSERT INTO `t_vue_tree_node` VALUES (4, '密码修改', 2, 1, '/sys/VuexPage3', 4, NULL);
INSERT INTO `t_vue_tree_node` VALUES (5, '论坛管理', 1, NULL, NULL, 5, 'el-icon-reading');
INSERT INTO `t_vue_tree_node` VALUES (6, '文章管理', 2, 5, '/sys/Articles', 6, NULL);

-- ----------------------------
-- Table structure for t_vue_user
-- ----------------------------
DROP TABLE IF EXISTS `t_vue_user`;
CREATE TABLE `t_vue_user`  (
  `uname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_vue_user
-- ----------------------------
INSERT INTO `t_vue_user` VALUES ('ls', '123');
INSERT INTO `t_vue_user` VALUES ('ww', '123');
INSERT INTO `t_vue_user` VALUES ('zs', '123');

SET FOREIGN_KEY_CHECKS = 1;
