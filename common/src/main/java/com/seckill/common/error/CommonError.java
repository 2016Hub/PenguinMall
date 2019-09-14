package com.seckill.common.error;

/**
 * @author yinren
 * @date 2019/6/29
 */
public interface CommonError {

    public int getErrCode();
    public String getErrMsg();
    public CommonError setErrMsg(String errMsg);
}
