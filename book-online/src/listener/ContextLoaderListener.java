package listener;

import entiy.Book;
import entiy.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/**
 * @author kuon-chitose
 * @ClassName ContextLoaderListener
 * @Description TODO
 * @Date 2019/10/2
 * @Version 1.0
 **/
@WebListener
public class ContextLoaderListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        List<User> userList = new ArrayList<>(3);
        User[] users = {
                new User("112233", "698d51a19d8a121ce581499d7b701668", "Artem", "user1.png"),
                new User("111222333", "bcbe3365e6ac95ea2c0343a2395834dd", "Amano Tooko", "user2.png"),
                new User("123", "310dcbbf4cce62f762a2aaa148d556bd", "kuonchitose", "3.jpg")
        };
        userList = Arrays.asList(users);

        List<Book> bookList = new ArrayList<>(10);
        Book[] books = {
                new Book(1,"尸人庄迷案", "1.jpg", "[日] 今村昌弘"),
                new Book(2,"告别的仪式", "10.jpg", " [法]德·波伏瓦"),
                new Book(3,"不似骄阳", "3.jpg", " [英]安东尼·伯吉斯"),
                new Book(4,"敌人与邻居", "6.jpg", "[英]伊恩·布莱克"),
                new Book(5,"企鹅的忧郁", "8.jpg", "[乌克兰]库尔科夫"),
                new Book(6,"学会呼吸", "9.jpg", "[爱尔兰]麦基翁"),
                new Book(7,"哀伤纪", "4.jpg", "钟晓阳"),
                new Book(8,"品味", "2.jpg", "[意]阿甘本"),
                new Book(9,"离婚", "7.jpg", "老舍"),
                new Book(10,"笨故事集","11.jpg","周云蓬"),
                new Book(11,"何为真正生活","12.jpg","[法]阿兰·巴迪欧"),
                new Book(12,"闽国","13.jpg","[美]薛爱华"),
        };
        bookList = Arrays.asList(books);
        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("bookList", bookList);
}
    /**
     * 销毁方法
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}