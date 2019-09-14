package com.seckill.impl;

import com.seckill.UserService;
import com.seckill.mapper.UserMapper;
import com.seckill.pojo.User;
import org.n3r.idworker.Sid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

/**
 * @author yinren
 * @date 2019/6/29
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private Sid sid;

    @Override
    public Boolean checkEmail(String email) {
        Example example = new Example(User.class);
        example.createCriteria().andEqualTo("email", email);
        User result = userMapper.selectOneByExample(example);
        if (result != null) {
            return true;
        }
        return false;
    }

    @Override
    public User register(User user) {
        user.setId(sid.nextShort());
        int result = userMapper.insertSelective(user);
        if (result > 0) {
            return user;
        } else {
            return new User("-1");
        }
    }

    @Override
    public User login(String email, String password) {
        Example example = new Example(User.class);
        example.createCriteria().andEqualTo("email", email).andEqualTo("password", password);
        User result = userMapper.selectOneByExample(example);
        if (result != null) {
            return result;
        } else {
            return new User("-1");
        }
    }

    @Override
    public User change(User user) {
        int change = userMapper.updateByPrimaryKeySelective(user);
        if (change > 0) {
            User changeUser = userMapper.selectByPrimaryKey(user);
            changeUser.setPassword("");
            return changeUser;
        } else {
            return new User("-1");
        }
    }

    @Override
    public Boolean password(User user) {
        int change = userMapper.updateByPrimaryKeySelective(user);
        if (change > 0) {
            return true;
        } else {
            return false;
        }
    }
}
