package com.seckill.impl;

import com.seckill.ItemService;
import com.seckill.OrderService;
import com.seckill.mapper.OrderInfoMapper;
import com.seckill.pojo.Item;
import com.seckill.pojo.OrderInfo;
import com.seckill.pojo.vo.ItemVO;
import org.n3r.idworker.Sid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

/**
 * @author yinren
 * @date 2019/7/1
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private Sid sid;
    @Autowired
    private OrderInfoMapper orderMapper;
    @Autowired
    private ItemService itemService;

    @Override
    public Boolean order(OrderInfo order) {
        order.setId(sid.nextShort());
        int result = orderMapper.insertSelective(order);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<ItemVO> show(String user_id) {
        List<ItemVO> items = new ArrayList<ItemVO>();
        Example example = new Example(OrderInfo.class);
        example.createCriteria().andEqualTo("userId", user_id);
        List<OrderInfo> orders = orderMapper.selectByExample(example);
        for (OrderInfo order : orders) {
            Item item = itemService.getById(order.getItemId());
            items.add(new ItemVO(item, order.getAmount(),order.getId(),order.getI_color(),order.getIfdone()));
        }
        return items;
    }


    @Override
    public List<ItemVO> shopping(String user_id, Integer ifdone) {
        List<ItemVO> items = new ArrayList<ItemVO>();
        Example example = new Example(OrderInfo.class);
        example.createCriteria().andEqualTo("userId", user_id).andEqualTo("ifdone", ifdone);
        List<OrderInfo> orders = orderMapper.selectByExample(example);
        for (OrderInfo order : orders) {
            Item item = itemService.getById(order.getItemId());
            items.add(new ItemVO(item, order.getAmount(),order.getId(),order.getI_color()));
        }
        return items;
    }

    @Override
    public Boolean count(String user_id, int[] item_ids,String address,Integer pay_mode) {
        for (Integer item_id : item_ids) {

            Example example = new Example(OrderInfo.class);
            example.createCriteria().andEqualTo("userId", user_id).andEqualTo("itemId", item_id);
            OrderInfo orderInfo = new OrderInfo();
            orderInfo.setIfdone(1);
            orderInfo.setAddress(address);
            orderInfo.setPay_mode(pay_mode);

            orderMapper.updateByExampleSelective(orderInfo, example);

        }
        return true;
    }
}
