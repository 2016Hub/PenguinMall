package com.seckill.pojo;

import javax.persistence.*;

public class Item {
    /**
     * 商品 ID
     */
    @Id
    private Integer id;

    /**
     * 商品名称
     */
    private String name;

    /**
     * 商品价格
     */
    private Integer price;

    /**
     * 上架时间
     */
    private String time;

    /**
     * 库存
     */
    private Integer stock;

    /**
     * 类别： 1 椅子，2 柜子 3 床 4 沙发
     */
    private Integer classify;
    /**
     * 商品描述
     */
    private String description;


    private Integer sales;



    private String p1;
    private String p2;
    private String p3;
    private String p4;





    public Item() {
    }
    public Item(Integer id) {
        this.id = id;
    }

    /**
     * 获取商品 ID
     *
     * @return id - 商品 ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置商品 ID
     *
     * @param id 商品 ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取商品名称
     *
     * @return name - 商品名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置商品名称
     *
     * @param name 商品名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取商品价格
     *
     * @return price - 商品价格
     */
    public Integer getPrice() {
        return price;
    }

    /**
     * 设置商品价格
     *
     * @param price 商品价格
     */
    public void setPrice(Integer price) {
        this.price = price;
    }

    /**
     * 获取上架时间
     *
     * @return time - 上架时间
     */
    public String getTime() {
        return time;
    }

    /**
     * 设置上架时间
     *
     * @param time 上架时间
     */
    public void setTime(String time) {
        this.time = time;
    }

    /**
     * 获取库存
     *
     * @return stock - 库存
     */
    public Integer getStock() {
        return stock;
    }

    /**
     * 设置库存
     *
     * @param stock 库存
     */
    public void setStock(Integer stock) {
        this.stock = stock;
    }

    /**
     * 获取类别： 1 椅子，2 柜子 3 床 4 沙发
     *
     * @return classify - 类别： 1 椅子，2 柜子 3 床 4 沙发
     */
    public Integer getClassify() {
        return classify;
    }

    /**
     * 设置类别： 1 椅子，2 柜子 3 床 4 沙发
     *
     * @param classify 类别： 1 椅子，2 柜子 3 床 4 沙发
     */
    public void setClassify(Integer classify) {
        this.classify = classify;
    }

    /**
     * 获取商品描述
     *
     * @return description - 商品描述
     */
    public String getDescription() {
        return description;
    }

    /**
     * 设置商品描述
     *
     * @param description 商品描述
     */
    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    public String getP1() {
        return p1;
    }

    public void setP1(String p1) {
        this.p1 = p1;
    }

    public String getP2() {
        return p2;
    }

    public void setP2(String p2) {
        this.p2 = p2;
    }

    public String getP3() {
        return p3;
    }

    public void setP3(String p3) {
        this.p3 = p3;
    }

    public String getP4() {
        return p4;
    }

    public void setP4(String p4) {
        this.p4 = p4;
    }

}