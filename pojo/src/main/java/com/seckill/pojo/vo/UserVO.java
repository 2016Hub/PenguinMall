package com.seckill.pojo.vo;

import com.seckill.pojo.User;

/**
 * @author yinren
 * @date 2019/6/29
 */
public class UserVO{
    private String token;
    private User user;

    public UserVO() {
    }

    public UserVO(String token, User user) {
        this.token = token;
        this.user = user;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
