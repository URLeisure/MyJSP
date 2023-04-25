package com.shi.mapper;

import com.shi.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author: 扑腾的江鱼
 * @description: TODO 类描述
 * @create: 2023/05/23 9:04
 **/

public class UserDao {
    private static final int PAGE_SIZE = 2; // 每页显示的记录数

    public List<User> getUsers(int page) {
        List<User> userList = new ArrayList<>();
        int offset = (page - 1) * PAGE_SIZE; // 计算偏移量

        try {
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rest = null;
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bz?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=Asia/Shanghai&rewriteBatchedStatements=true", "root", "root");

            pstmt = conn.prepareStatement("SELECT * FROM user LIMIT ?, ?");


            pstmt.setInt(1, offset);
            pstmt.setInt(2, PAGE_SIZE);
            rest = pstmt.executeQuery();

            while (rest.next()) {
                int id = rest.getInt("id");
                String username = rest.getString("username");
                // 从结果集中获取其他用户属性...

                User user = new User(id, username);
                // 设置其他用户属性...

                userList.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return userList;
    }

    public List<User> getUsers1(){
        List<User> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rest = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bz?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=Asia/Shanghai&rewriteBatchedStatements=true","root","root");
            String sql = "select * from user";
            pstmt = conn.prepareStatement(sql);
            rest = pstmt.executeQuery();

            while(rest.next()){
                User user = new User(rest.getInt("id"),rest.getString("username") );
                list.add(user);
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    public int getTotalPageCount() {
        int totalPageCount = 0;

        try {
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rest = null;
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bz?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=Asia/Shanghai&rewriteBatchedStatements=true", "root", "root");


            pstmt = conn.prepareStatement("SELECT COUNT(*) FROM user");
             rest = pstmt.executeQuery();
            if (rest.next()) {
                int totalCount = rest.getInt(1);
                totalPageCount = (int) Math.ceil((double) totalCount / PAGE_SIZE);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return totalPageCount;
    }
}
