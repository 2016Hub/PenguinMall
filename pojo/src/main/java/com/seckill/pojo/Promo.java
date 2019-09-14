package com.seckill.pojo;

import javax.persistence.*;

public class Promo {
    /**
     * 活动 ID
     */
    @Id
    private String id;

    /**
     * 活动名称
     */
    private String name;

    /**
     * 活动价格
     */
    private Integer price;

    /**
     * 活动开始时间
     */
    @Column(name = "start_time")
    private String startTime;

    /**
     * 活动结束时间
     */
    @Column(name = "end_time")
    private String endTime;

    /**
     * 活动商品 ID
     */
    @Column(name = "item_id")
    private Integer itemId;

    /**
     * 获取活动 ID
     *
     * @return id - 活动 ID
     */
    public String getId() {
        return id;
    }

    /**
     * 设置活动 ID
     *
     * @param id 活动 ID
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取活动名称
     *
     * @return name - 活动名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置活动名称
     *
     * @param name 活动名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取活动价格
     *
     * @return price - 活动价格
     */
    public Integer getPrice() {
        return price;
    }

    /**
     * 设置活动价格
     *
     * @param price 活动价格
     */
    public void setPrice(Integer price) {
        this.price = price;
    }

    /**
     * 获取活动开始时间
     *
     * @return start_time - 活动开始时间
     */
    public String getStartTime() {
        return startTime;
    }

    /**
     * 设置活动开始时间
     *
     * @param startTime 活动开始时间
     */
    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    /**
     * 获取活动结束时间
     *
     * @return end_time - 活动结束时间
     */
    public String getEndTime() {
        return endTime;
    }

    /**
     * 设置活动结束时间
     *
     * @param endTime 活动结束时间
     */
    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    /**
     * 获取活动商品 ID
     *
     * @return item_id - 活动商品 ID
     */
    public Integer getItemId() {
        return itemId;
    }

    /**
     * 设置活动商品 ID
     *
     * @param itemId 活动商品 ID
     */
    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }
}