<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示页面</title>
</head>
<body>
    <h2>书籍查询----显示所有的书籍</h2>
    <h3><a href="${pageContext.request.contextPath}/book/toAddPage">新增书籍</a> </h3>
    <h2>查询书籍</h2>
    <form action="${pageContext.request.contextPath}/book/queryBook" method="post">
        <input type="text" name ="bookName" placeholder="请输入要查询的书籍名称" >
        <input type="submit" value="查询">
    </form>
    <table>
        <tr>
            <th>书籍编号</th>
            <th>书籍名称</th>
            <th>书籍数量</th>
            <th>书籍描述</th>
            <th>操作选项</th>
        </tr>
        <c:forEach var="book" items="${list}">
            <tr>
                <td>${book.bookId}</td>
                <td>${book.bookName}</td>
                <td>${book.bookCounts}</td>
                <td>${book.detail}</td>
                <td><a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookId}">删除</a> &nbsp;|&nbsp;
                    <a href="${pageContext.request.contextPath}/book/toUpdatePage/${book.bookId}">修改</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
