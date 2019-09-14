package com.seckill.pojo;

import javax.persistence.*;

public class OrderInfo {
    /**
     * 订单 ID
     */
    @Id
    private String id;

    /**
     * 下订单的用户 ID
     */
    @Column(name = "user_id")
    private String userId;

    /**
     * 购买的商品 ID
     */
    @Column(name = "item_id")
    private Integer itemId;

    /**
     * 购买价格
     */
    private Integer price;

    /**
     * 购买数量
     */
    private Integer amount;

    /**
     * 是否已结算： 0 未结算 1 已结算
     */
    private Integer ifdone;

    private String address;
    private Integer pay_mode;

    private Integer i_color;

    private  Integer ifchosen;

    public OrderInfo() {
    }

    public OrderInfo(Integer ifdone) {
        this.ifdone = ifdone;
    }

    public OrderInfo(String userId, Integer itemId) {
        this.userId = userId;
        this.itemId = itemId;
    }

    public OrderInfo(String userId, Integer itemId, Integer price, Integer amount, Integer ifdone,String address,Integer pay_mode,Integer i_color) {
        this.userId = userId;
        this.itemId = itemId;
        this.price = price;
        this.amount = amount;
        this.ifdone = ifdone;
        this.address = address;
        this.pay_mode = pay_mode;
        this.i_color = i_color;
    }

    /**
     * 获取订单 ID
     *
     * @return id - 订单 ID
     */
    public String getId() {
        return id;
    }

    /**
     * 设置订单 ID
     *
     * @param id 订单 ID
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取下订单的用户 ID
     *
     * @return user_id - 下订单的用户 ID
     */
    public String getUserId() {
        return userId;
    }

    /**
     * 设置下订单的用户 ID
     *
     * @param userId 下订单的用户 ID
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * 获取购买的商品 ID
     *
     * @return item_id - 购买的商品 ID
     */
    public Integer getItemId() {
        return itemId;
    }

    /**
     * 设置购买的商品 ID
     *
     * @param itemId 购买的商品 ID
     */
    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    /**
     * 获取购买价格
     *
     * @return price - 购买价格
     */
    public Integer getPrice() {
        return price;
    }

    /**
     * 设置购买价格
     *
     * @param price 购买价格
     */
    public void setPrice(Integer price) {
        this.price = price;
    }

    /**
     * 获取购买数量
     *
     * @return amount - 购买数量
     */
    public Integer getAmount() {
        return amount;
    }

    /**
     * 设置购买数量
     *
     * @param amount 购买数量
     */
    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Integer getIfdone() {
        return ifdone;
    }

    public void setIfdone(Integer ifdone) {
        this.ifdone = ifdone;
    }

    /**
     * 获取是否已结算： 0 未结算 1 已结算
     *
     * @return classify - 是否已结算： 0 未结算 1 已结算
     */



    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getPay_mode() {
        return pay_mode;
    }

    public void setPay_mode(Integer pay_mode) {
        this.pay_mode = pay_mode;
    }

    public Integer getI_color() {
        return i_color;
    }

    public void setI_color(Integer i_color) {
        this.i_color = i_color;
    }

    public Integer getIfchosen() {
        return ifchosen;
    }

    public void setIfchosen(Integer ifchosen) {
        this.ifchosen = ifchosen;
    }
}

