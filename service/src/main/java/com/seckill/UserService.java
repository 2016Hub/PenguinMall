package com.seckill;

import com.seckill.pojo.User;

/**
 * @author yinren
 * @date 2019/6/29
 */
public interface UserService {

    //查询邮箱是否已被注册
    public Boolean checkEmail(String email);

    //注册
    public User register(User user);

    //登陆
    public User login(String email, String password);

    //用户信息修改
    public User change(User user);

    //密码修改
    public Boolean password(User user);
}
