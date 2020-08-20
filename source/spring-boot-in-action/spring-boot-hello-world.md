# [编程这点事](https://aboutprogramming.net)

![About Programming](https://s1.ax1x.com/2020/08/20/d3rQ3V.png)

您好，欢迎来到**编程这点事**站点。扫码关注公众号获取更多精彩内容。

关注并发编程、分布式编程、微服务架构等领域。内容起于编程而不止于编程。



## Spring Boot版Hello World

在[上一篇笔记](https://aboutprogramming.net/spring-boot-in-action/first-spring-boot-project.html)中已经创建好了项目，本篇将会编写一个基于Spring Boot的HTTP API，输出内容如下：

```shell
$ curl http://127.0.0.1:8080/user/greet
Hello World!
```

1. 在项目目录下创建 **web**目录/包，完整包名：**net.aboutprogramming.bulk.web**

2. 在 **web**包下创建**UserController**类，内容如下：

   ```java
   package net.aboutprogramming.bulk.web;
   
   
   import org.springframework.web.bind.annotation.GetMapping;
   import org.springframework.web.bind.annotation.RequestMapping;
   import org.springframework.web.bind.annotation.RestController;
   
   @RestController
   @RequestMapping("/user")
   public class UserController {
   
       @GetMapping("/greet")
       public String greet() {
           return "Hello World!\n";
       }
   }
   ```

3. 运行项目

   > Spring Boot内置了Tomcat容器，默认监听端口为：8080

4. 使用浏览器或**curl**命令访问：http://127.0.0.1:8080/user/greet

5. 下载示例代码：[https://github.com/aboutprogramming/bulk/releases/tag/v0.2.0](https://github.com/aboutprogramming/bulk/releases/tag/v0.2.0)