<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新数据页面</title>
</head>
<body>
    <h3>更新书籍信息</h3>
    <form action="/book/updateBook" method="post">
        <table >
            <tr>
                <td>书籍编号</td>
                <td><input type="text" name="bookId" required="required" value="${bookById.bookId}" readonly></td>
            </tr>
            <tr>
                <td>书籍名称</td>
                <td><input type="text" name="bookName" required="required" value="${bookById.bookName}"></td>
            </tr>
            <tr>
                <td>书籍数量</td>
                <td><input type="text" name="bookCounts" required="required" value="${bookById.bookCounts}"></td>
            </tr>
            <tr>
                <td>书籍描述</td>
                <td><input type="text" name="detail" required="required" value="${bookById.detail}"></td>
            </tr>
            <tr>
                <td>修改书籍</td>
                <td align="center"><input type="submit" value="修改"></td>
            </tr>
        </table>
    </form>
</body>
</html>
