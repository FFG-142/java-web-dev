package servlet;

import entiy.Book;
import service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author kuon-chitose
 * @ClassName HomeServlet
 * @Description TODO
 * @Date 2019/9/25
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/index")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Book> bookList = BookService.init();
        req.setAttribute("bookList", bookList);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
