package service;

import pojo.Books;
import java.util.List;

public interface BookService {
    //增加一本书
    public int addBook(Books book);
    //查询一本书
    public Books queryBookById(int id);
    //删除一本书
    public int deleteBookById(int id);
    //更新一本书
    public int updateBook(Books book);
    //查询所有图书
    public List<Books> queryAllBooks();
    //根据名字查询书籍
    public List<Books> queryBookByName(String bookName);
}
