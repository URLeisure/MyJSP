package com.shi.model;

/**
 * @author: 扑腾的江鱼
 * @description: TODO 类描述
 * @create: 2023/05/23 9:03
 **/

public class User {
    private int id;
    private String username;
    private String password;
    private double salary;

    public User() {
    }

    public User(int id, String username) {
        this.id = id;
        this.username = username;
    }

    public User(int id, String username, String password, double salary) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.salary = salary;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }
}
