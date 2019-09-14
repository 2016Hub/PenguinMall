package com.seckill.pojo;

import javax.persistence.*;

public class User {
    @Id
    private String id;

    /**
     * 用户名
     */
    private String name;

    /**
     * 密码
     */
    private String password;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 年纪
     */
    private Integer age;

    public User() {
    }

    public User(String id) {
        this.id = id;
    }

    public User(String password, String email) {
        this.password = password;
        this.email = email;
    }

    public User(String name, String password, String email, Integer age) {
        this.name = name;
        this.password = password;
        this.email = email;
        this.age = age;
    }

    public User(String id, String name, String password, String email, Integer age) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.age = age;
    }

    /**
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取用户名
     *
     * @return name - 用户名
     */
    public String getName() {
        return name;
    }

    /**
     * 设置用户名
     *
     * @param name 用户名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取密码
     *
     * @return password - 密码
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置密码
     *
     * @param password 密码
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取邮箱
     *
     * @return email - 邮箱
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置邮箱
     *
     * @param email 邮箱
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取年纪
     *
     * @return age - 年纪
     */
    public Integer getAge() {
        return age;
    }

    /**
     * 设置年纪
     *
     * @param age 年纪
     */
    public void setAge(Integer age) {
        this.age = age;
    }
}