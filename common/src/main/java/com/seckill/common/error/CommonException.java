package com.seckill.common.error;

/**
 * 封装业务异常类实现
 *
 * @author yinren
 * @date 2019/6/29
 */
public class CommonException extends Exception implements CommonError {

    private CommonError commonError;

    //直接接收 EmBusinessError 的传参用于构造业务异常
    public CommonException(CommonError commonError) {
        super();
        this.commonError = commonError;
    }

    //接收自定义 errMsg 的方式构造业务异常（通过覆盖原本errMsg）
    public CommonException(CommonError commonError, String errMsg) {
        super();
        this.commonError = commonError;
        this.commonError.setErrMsg(errMsg);
    }

    @Override
    public int getErrCode() {
        return this.commonError.getErrCode();
    }

    @Override
    public String getErrMsg() {
        return this.commonError.getErrMsg();
    }

    @Override
    public CommonError setErrMsg(String errMsg) {
        this.commonError.setErrMsg(errMsg);
        return this;
    }
}
