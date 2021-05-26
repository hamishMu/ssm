<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加书籍页面</title>
</head>
<body>
    <h2>增加书籍页面</h2>
    <form action="/book/addBook" method="post">
        <table >
            <tr>
                <td>书籍名称</td>
                <td><input type="text" name="bookName" required="required"></td>
            </tr>
            <tr>
                <td>书籍数量</td>
                <td><input type="text" name="bookCounts" required="required"></td>
            </tr>
            <tr>
                <td>书籍描述</td>
                <td><input type="text" name="detail" required="required"></td>
            </tr>
            <tr>
                <td>添加书籍</td>
                <td align="center"><input type="submit" value="添加"></td>
            </tr>
        </table>
    </form>
</body>
</html>
