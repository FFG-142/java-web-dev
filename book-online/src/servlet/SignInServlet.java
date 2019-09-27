package servlet;

import entiy.User;
import service.UserService;
import util.Md5Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author kuon-chitose
 * @ClassName SignInServlet
 * @Description TODO
 * @Date 2019/9/25
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/sign_in")
public class SignInServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        String account = req.getParameter("account");
        String password = req.getParameter("password");
        UserService userService = new UserService();
        User user = userService.signIn(account, Md5Util.crypt(password));
        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            resp.sendRedirect("/index");
        } else {
            out.print("<script>alert('账号或密码错误');location.href='/';</script>");
        }
    }
}
