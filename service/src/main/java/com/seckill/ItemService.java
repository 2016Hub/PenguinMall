package com.seckill;

import com.seckill.pojo.Item;

import java.util.List;

/**
 * @author yinren
 * @date 2019/7/1
 */
public interface ItemService {

    //获取指定类别的商品
    public List<Item> list(String classify);

    //根据 id 查询商品
    public Item getById(Integer item_id);

    public List<Item> getByPrice(Integer item_price);
}
