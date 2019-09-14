package com.seckill.pojo.vo;

import com.seckill.pojo.Item;

/**
 * @author yinren
 * @date 2019/7/1
 */
public class ItemVO {
    private Item item;
    private Integer amount;
    private String order_id;
    private Integer i_color;
    private Integer ifdone;

    public ItemVO() {
    }

    public ItemVO(Item item, Integer amount,String order_id,Integer i_color,Integer ifdone) {
        this.item = item;
        this.amount = amount;
        this.order_id = order_id;
        this.i_color = i_color;
        this.ifdone = ifdone;
    }
    public ItemVO(Item item, Integer amount,String order_id,Integer i_color) {
        this.item = item;
        this.amount = amount;
        this.order_id = order_id;
        this.i_color = i_color;

    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public Integer getI_color() {
        return i_color;
    }

    public void setI_color(Integer i_color) {
        this.i_color = i_color;
    }

    public Integer getIfdone() {
        return ifdone;
    }

    public void setIfdone(Integer ifdone) {
        this.ifdone = ifdone;
    }
}
