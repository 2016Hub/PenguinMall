package com.seckill.impl;

import com.seckill.ItemService;
import com.seckill.mapper.ItemMapper;
import com.seckill.pojo.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author yinren
 * @date 2019/7/1
 */
@Service
public class ItemServiceImpl implements ItemService {
    @Autowired
    private ItemMapper itemMapper;

    @Override
    public List<Item> list(String classify) {
        Example example = new Example(Item.class);
        example.createCriteria().andEqualTo("classify", classify);
        List<Item> items = itemMapper.selectByExample(example);
        return items;
    }

    @Override
    public Item getById(Integer item_id) {
        Item item = itemMapper.selectByPrimaryKey(new Item(item_id));
        return item;
    }

    @Override
    public List<Item> getByPrice(Integer item_price) {
        Example example = new Example(Item.class);
        example.createCriteria().andEqualTo("price", item_price);
        List<Item> result = itemMapper.selectByExample(example);
        return result;
    }
}
