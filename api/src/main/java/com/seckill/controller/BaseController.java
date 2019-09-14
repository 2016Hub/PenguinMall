package com.seckill.controller;

import com.seckill.common.error.CommonException;
import com.seckill.common.error.EnumCommonError;
import com.seckill.common.response.CommonReturn;
import com.seckill.utils.RedisOperator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author yinren
 * @date 2019/6/29
 */
public class BaseController {

    @Autowired
    public RedisOperator redisOperator;

    public static final String USER_REDIS_SESSION = "user-redis-session";

    @ExceptionHandler(Exception.class) //统一处理某一类异常，从而能够减少代码重复率和复杂度
    @ResponseStatus(HttpStatus.OK) //可以将某种异常映射为HTTP状态码
    @ResponseBody
    public Object handlerException(HttpServletRequest request, Exception ex){
        Map<String, Object> responseData = new HashMap<>();
        if(ex instanceof CommonException){
            CommonException commonException = (CommonException)ex;
            responseData.put("errCode",commonException.getErrCode());
            responseData.put("errMsg",commonException.getErrMsg());
        }else{
            responseData.put("errCode", EnumCommonError.UNKNOW_ERROR.getErrCode());
            responseData.put("errMsg", EnumCommonError.UNKNOW_ERROR.getErrMsg());

        }

        return CommonReturn.create(responseData,"fail");

    }
}