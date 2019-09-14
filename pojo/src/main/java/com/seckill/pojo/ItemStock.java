package com.seckill.pojo;

import javax.persistence.*;

@Table(name = "item_stock")
public class ItemStock {
    /**
     * item 对应 ID
     */
    @Id
    private Integer id;

    /**
     * 商品库存
     */
    private Integer stock;

    /**
     * 获取item 对应 ID
     *
     * @return id - item 对应 ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置item 对应 ID
     *
     * @param id item 对应 ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取商品库存
     *
     * @return stock - 商品库存
     */
    public Integer getStock() {
        return stock;
    }

    /**
     * 设置商品库存
     *
     * @param stock 商品库存
     */
    public void setStock(Integer stock) {
        this.stock = stock;
    }
}