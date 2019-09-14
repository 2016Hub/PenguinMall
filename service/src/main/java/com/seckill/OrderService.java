package com.seckill;

import com.seckill.pojo.OrderInfo;
import com.seckill.pojo.vo.ItemVO;

import java.util.List;

/**
 * @author yinren
 * @date 2019/7/1
 */
public interface OrderService {

    //添加订单： 购物车或购买
    public Boolean order(OrderInfo order);

    //根据 user_id 获得指定的商品
    public List<ItemVO> show(String user_id);

    public List<ItemVO> shopping(String user_id, Integer ifdone);



    //结算购物车商品
    public Boolean count(String user_id, int[] item_ids,String address,Integer pay_mode);
}
