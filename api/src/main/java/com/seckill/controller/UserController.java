package com.seckill.controller;

import com.seckill.UserService;
import com.seckill.common.error.CommonException;
import com.seckill.common.error.EnumCommonError;
import com.seckill.common.response.CommonReturn;
import com.seckill.pojo.User;
import com.seckill.pojo.vo.UserVO;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.UnsupportedEncodingException;
import java.util.Map;
import java.util.UUID;

/**
 * @author yinren
 * @date 2019/6/29
 */
@RestController
@RequestMapping("/user")
@CrossOrigin(origins = {"*"}, allowCredentials = "true")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    @PostMapping("/register")
    public CommonReturn register(String email,String name,String password,Integer age) throws CommonException, UnsupportedEncodingException {
        if (StringUtils.isEmpty(email) || StringUtils.isEmpty(name) || StringUtils.isEmpty(password) || StringUtils.isEmpty(String.valueOf(age))) {
            throw new CommonException(EnumCommonError.USER_REGISTER_NOT_USER); //注册信息不能为空
        }
        Boolean checkEmail = userService.checkEmail(email);
        if (checkEmail) {
            throw new CommonException(EnumCommonError.USER_REGISTER_EXIT_EMAIL); //该邮箱已被注册
        }
        User user = new User(name, hexMD5(password), email, age);
        User register = userService.register(user);
        if (register.getId() == "-1") {
            throw new CommonException(EnumCommonError.USER_REGISTER_FAIL); //注册失败
        }
        return CommonReturn.create(null);
    }


    @PostMapping("/login")
    public CommonReturn login(String email, String password) throws CommonException, UnsupportedEncodingException {
        if (StringUtils.isEmpty(email) || StringUtils.isEmpty(password)) {
            throw new CommonException(EnumCommonError.USER_LOGIN_NULL); //账号或密码不能为空
        }
        User login = userService.login(email, hexMD5(password));
        if (login.getId() == "-1") {
            throw new CommonException(EnumCommonError.USER_LOGIN_NOT_USER); //账号或密码错误
        }
        return CommonReturn.create(login);
    }

    @RequestMapping("/change")
    public CommonReturn change(String user_id, String name, String email, Integer age) throws CommonException {
        if (StringUtils.isEmpty(user_id)) {
            throw new CommonException(EnumCommonError.USER_LOGIN_ERROR); //用户异常，请重新登录
        }
        User user = new User(user_id, name, null, email, age);
        User change = userService.change(user);
        if (change.getId() == "-1") {
            throw new CommonException(EnumCommonError.USER_CHANGE_ERROR); //用户信息更新异常
        }
        return CommonReturn.create(change);
    }

    @RequestMapping("/password")
    public CommonReturn password(String user_id, String password) throws CommonException, UnsupportedEncodingException {
        if (StringUtils.isEmpty(user_id)) {
            throw new CommonException(EnumCommonError.USER_LOGIN_ERROR); //用户异常，请重新登录
        }
        if (StringUtils.isEmpty(password)) {
            throw new CommonException(EnumCommonError.USER_CHANGE_PASSWORD_NULL); //新密码不能为空
        }
        User user = new User(user_id, null, hexMD5(password), null, null);
        Boolean change = userService.password(user);
        if (!change) {
            throw new CommonException(EnumCommonError.USER_CHANGE_PASSWORD_ERROR); //密码更新异常，请重试
        }
        return CommonReturn.create(null);
    }

    @RequestMapping("/name")
    public String test() {
        return "name";
    }

    //使用 MD5 算法加密
    public String hexMD5(String str) throws UnsupportedEncodingException {
        String hex = DigestUtils.md5Hex(str);
        return hex;
    }

    //用户登录凭证保存至 redis 并返回
    public UserVO setUserRedisSessionToken(User user) {
        String uniqueToken = UUID.randomUUID().toString();
        uniqueToken = USER_REDIS_SESSION + ":" + user.getId() + "=" + uniqueToken;
        redisOperator.set(USER_REDIS_SESSION + ":" + user.getId(), uniqueToken, 60 * 60 * 24 * 7);

        UserVO userVO = new UserVO();
        user.setPassword("");
        userVO.setUser(user);
        userVO.setToken(uniqueToken);
        return userVO;
    }
    }
