package service;

import entiy.Book;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author kuon-chitose
 * @ClassName BookService
 * @Description TODO
 * @Date 2019/9/25
 * @Version 1.0
 **/
public class BookService {
    private static List<Book> bookList;

    public static List<Book> init() {
        bookList = new ArrayList<>(10);
        Book[] books = {
                new Book("尸人庄迷案", "1.jpg", "[日] 今村昌弘"),
                new Book("告别的仪式", "10.jpg", " [法]德·波伏瓦"),
                new Book("不似骄阳", "3.jpg", " [英]安东尼·伯吉斯"),
                new Book("敌人与邻居", "6.jpg", "[英]伊恩·布莱克"),
                new Book("企鹅的忧郁", "8.jpg", "[乌克兰]库尔科夫"),
                new Book("学会呼吸", "9.jpg", "[爱尔兰]麦基翁"),
                new Book("哀伤纪", "4.jpg", "钟晓阳"),
                new Book("品味", "2.jpg", "[意]阿甘本"),
                new Book("离婚", "7.jpg", "老舍"),
                new Book("笨故事集","11.jpg","周云蓬"),
                new Book("何为真正生活","12.jpg","[法]阿兰·巴迪欧"),
                new Book("闽国","13.jpg","[美]薛爱华"),
        };
        bookList = Arrays.asList(books);
        return bookList;
    }
}








