<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<body>
<h2>Hello World! main main main</h2>
<h1>主界面</h1>

<a href="<%=basePath%>/user/logout">退出登录</a><br>

<a href="<%=basePath%>/logout">退出登录2</a><br>

<shiro:hasRole name="stu">
    <a href="<%=basePath%>/student.jsp">学生页面</a><br>
</shiro:hasRole>

<shiro:hasRole name="tea">
    <a href="<%=basePath%>/teacher.jsp">老师页面</a><br>
</shiro:hasRole>

<shiro:hasAnyRoles name="tea,stu">
<a href="<%=basePath%>/test.jsp">管理员页面</a><br>
</shiro:hasAnyRoles>


<img src="static/image/1.jpg">
</body>
</html>
