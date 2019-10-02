package service;

import entiy.User;
import util.Md5Util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author kuon-chitose
 * @ClassName UserService
 * @Description TODO
 * @Date 2019/9/25
 * @Version 1.0
 **/
public class UserService {
    private List<User> userList;

//    public UserService() {
//        init();
//    }
    public void setUserList(List<User> userList) {
        this.userList = userList;
    }
//    private List<User> init() {
//        userList = new ArrayList<>(3);
//        User[] users = {
//                new User("112233", "698d51a19d8a121ce581499d7b701668", "Artem", "1.jpg"),
//                new User("111222333", "bcbe3365e6ac95ea2c0343a2395834dd", "Amano Tooko", "2.jpg"),
//                new User("123", "310dcbbf4cce62f762a2aaa148d556bd", "kuonchitose", "3.jpg")
//        };
//        userList = Arrays.asList(users);
//        return userList;
//    }

//    登陆功能
public User signIn(String account, String password) {
    for (User user : userList) {
        if (user.getAccount().equals(account) && user.getPassword().equals(Md5Util.crypt(password))) {
            return user;
        }
    }
    return null;
}
//    public static void main(String[] args) {
//        User user = new UserService().signIn("aaa", Md5Util.crypt("111"));
//        System.out.println(user);
//    }
}
