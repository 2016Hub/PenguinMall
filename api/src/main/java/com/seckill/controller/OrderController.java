package com.seckill.controller;

import com.seckill.OrderService;
import com.seckill.common.error.CommonException;
import com.seckill.common.error.EnumCommonError;
import com.seckill.common.response.CommonReturn;
import com.seckill.pojo.OrderInfo;
import com.seckill.pojo.vo.ItemVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static java.lang.Character.getType;

/**
 * @author yinren
 * @date 2019/6/30
 */
@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/order")
    public CommonReturn order(Integer item_id, String user_id, Integer price, Integer amount, Integer ifdone,String address,Integer pay_mode,Integer i_color) throws CommonException {
        if (StringUtils.isEmpty(String.valueOf(item_id))
                || StringUtils.isEmpty(user_id)
                || StringUtils.isEmpty(String.valueOf(price))
                || StringUtils.isEmpty(String.valueOf(amount))
                || StringUtils.isEmpty(String.valueOf(ifdone))
//                || StringUtils.isEmpty(address)
//                || StringUtils.isEmpty(String.valueOf(pay_mode))
                || StringUtils.isEmpty(String.valueOf(i_color))
        ) {
            throw new CommonException(EnumCommonError.ORDER_ORDER_NULL); //参数为空
        }
        OrderInfo order = new OrderInfo(user_id, item_id, price, amount, ifdone, address, pay_mode,i_color);
        Boolean result = orderService.order(order);
        if (!result) {
            throw new CommonException(EnumCommonError.ORDER_ORDER_ERROR); //插入失败
        }
        return CommonReturn.create(ifdone);
    }

    @RequestMapping("/show")
    public CommonReturn show(String user_id) throws CommonException {
        if (StringUtils.isEmpty(user_id)) {
            throw new CommonException(EnumCommonError.ORDER_SHOPPING_NULL); //参数为空
        }
        List<ItemVO> itemVOList = orderService.show(user_id);

        return CommonReturn.create(itemVOList);
    }

    @RequestMapping("/shopping")
    public CommonReturn shopping(String user_id, Integer ifdone) throws CommonException {
        if (StringUtils.isEmpty(user_id) || StringUtils.isEmpty(String.valueOf(ifdone))) {
            throw new CommonException(EnumCommonError.ORDER_SHOPPING_NULL); //参数为空
        }
        List<ItemVO> itemVOList = orderService.shopping(user_id, ifdone);

        return CommonReturn.create(itemVOList);
    }

    @RequestMapping("/count")
    public CommonReturn count(@RequestBody Map<String,String> map) throws CommonException {

        System.out.println(map);
        String user_id=map.get("user_id");
        String address=map.get("address");
        Integer pay_mode=Integer.valueOf(map.get("pay_mode"));
        String length=map.get("0");
        int len = Integer.parseInt(length);
        int[] item_ids=new int[len];

        for(int i=1;i<=len;i++){
            String j= String.valueOf(i);
            item_ids[i-1]=Integer.parseInt(map.get(j));
        }

        if (StringUtils.isEmpty(user_id)) {
            throw new CommonException(EnumCommonError.ORDER_COUNT_NULL); //user_id 为空
        }
        if (item_ids == null) {
            throw new CommonException(EnumCommonError.ORDER_COUNT_ID_NULL); //item_id 为空
        }
        orderService.count(user_id, item_ids,address,pay_mode);

        return CommonReturn.create(null);
    }


}
