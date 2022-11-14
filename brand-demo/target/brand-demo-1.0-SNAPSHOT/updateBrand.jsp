<%--
  Created by IntelliJ IDEA.
  User: xiaofeishi
  Date: 2022/11/12
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改品牌</title>
</head>
<body>
<h3>修改品牌</h3>
<form action="/updateBrandServlet" method="post">
    <input type="hidden" name="id" value="${brand.id}">
    品牌名称：<input name="brandName" value="${brand.brandName}"><br>
    企业名称：<input name="companyName" value="${brand.companyName}"><br>
    价格：<input name="ordered" value="${brand.ordered}"><br>
    描述信息：<textarea rows="5" cols="20" name="description">${brand.description}</textarea><br>
    状态：
    <c:if test="${brand.status == 0}" >
        <input type="radio" name="status" value="0" checked>禁用
        <input type="radio" name="status" value="1">启用
    </c:if>
    <c:if test="${brand.status == 1}" >
        <input type="radio" name="status" value="0">禁用
        <input type="radio" name="status" value="1" checked>启用
    </c:if>
    <input type="submit" value="提交">
</form>
</body>
</html>
