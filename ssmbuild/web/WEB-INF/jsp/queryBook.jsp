<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模糊查询</title>
</head>
<body>
<table>
  <tr>
    <th>书籍编号</th>
    <th>书籍名称</th>
    <th>书籍数量</th>
    <th>书籍描述</th>
    <th>操作选项</th>
  </tr>
  <c:forEach var="Books" items="${queryBook}">
    <tr>
      <td>${Books.bookId}</td>
      <td>${Books.bookName}</td>
      <td>${Books.bookCounts}</td>
      <td>${Books.detail}</td>
      <td><a href="${pageContext.request.contextPath}/book/deleteBook/${Books.bookId}">删除</a> &nbsp;|&nbsp;
        <a href="${pageContext.request.contextPath}/book/toUpdatePage/${Books.bookId}">修改</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
