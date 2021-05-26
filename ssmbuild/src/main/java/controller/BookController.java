package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Books;
import service.BookService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    //controller调用service
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //查询所有的书籍
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBooks();
        model.addAttribute("list",list);
        return "allBook";
    }
    //跳转到增加书籍的页面
    @RequestMapping("/toAddPage")
    public String toAddPage(){
        return "addBook";
    }


    @PostMapping("/addBook")
    public String addBook(HttpServletRequest request){
        String bookName = request.getParameter("bookName");
        int bookCounts = Integer.parseInt(request.getParameter("bookCounts"));
        String detail = request.getParameter("detail");
        Books book = new Books();
        book.setBookCounts(bookCounts);
        book.setBookName(bookName);
        book.setDetail(detail);
        bookService.addBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook/{id}")
    public String deleteBook(@PathVariable int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    //跳转到书籍更新页面
    @RequestMapping("/toUpdatePage/{id}")
    public String toUpdatePage(@PathVariable int id, Model model){
        Books book = bookService.queryBookById(id);
        model.addAttribute("bookById", book);
        return "updateBook";
    }

    @PostMapping("/updateBook")
    public String updateBook(Books book){
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }

    //查询数据名称
    @RequestMapping("/queryBook")
    public String queryBook(String bookName,Model model){
        List<Books> books = bookService.queryBookByName(bookName);
        model.addAttribute("queryBook",books);
        return "queryBook";
    }
}
