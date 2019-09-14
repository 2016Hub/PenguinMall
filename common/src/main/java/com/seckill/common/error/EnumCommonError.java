package com.seckill.common.error;

/**
 * @author yinren
 * @date 2019/6/29
 */
public enum EnumCommonError implements CommonError {
    //10000 开头为通用错误类型
    PARAMETER_VALIDATION_ERROR(10001, "参数不合法"),
    UNKNOW_ERROR(10002, "未知错误"),

    //20000 开头为用户相关错误
    USER_REGISTER_NOT_USER(20001, "注册信息不能为空，请重试"),
    USER_REGISTER_EXIT_EMAIL(20002, "该邮箱已被注册，请重试"),
    USER_REGISTER_FAIL(20003, "注册失败，请重试"),

    USER_LOGIN_NULL(20004, "账号或密码不能为空，请重试"),
    USER_LOGIN_NOT_USER(20005, "账号或密码错误，请重试"),
    USER_LOGIN_NOT_LOGIN(20006, "未登录，请先登录"),
    USER_LOGIN_OTHER_LOGIN(20007, "账号异地登录，请重新登录"),
    USER_LOGIN_ERROR(20008, "用户异常，请重新登录"),
    USER_CHANGE_ERROR(20009, "用户信息更新异常，请重试"),
    USER_CHANGE_PASSWORD_NULL(20010, "新密码不能为空，请重试"),
    USER_CHANGE_PASSWORD_ERROR(20011,"密码更新异常，请重试"),

    //30000 开头为商品相关错误
    ITEM_CLASSIFY_NULL(30001,"类别请求错误，请重试"),
    ITEM_LIST_NULL(30002,"请求类别为空，请重试"),
    ITEM_ID_NULL(30003,"该商品异常，请重试"),

    //40000 开头为订单相关错误
    ORDER_ORDER_NULL(40001,"下单请求异常，请重试"),
    ORDER_ORDER_ERROR(40002,"下单失败，请重试"),
    ORDER_SHOPPING_NULL(40003,"请求异常，请重试"),
    ORDER_COUNT_NULL(40004,"结算请求异常，请重试"),
    ORDER_COUNT_ID_NULL(40005,"请选择要结算的商品")
    ;
    private int errCode;
    private String errMsg;

    private EnumCommonError(int errCode, String errMsg) {
        this.errCode = errCode;
        this.errMsg = errMsg;
    }

    @Override
    public int getErrCode() {
        return this.errCode;
    }

    @Override
    public String getErrMsg() {
        return this.errMsg;
    }

    @Override
    public CommonError setErrMsg(String errMsg) {
        this.errMsg = errMsg;
        return this;
    }
}
