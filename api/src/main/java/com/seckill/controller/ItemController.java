package com.seckill.controller;

import com.seckill.ItemService;
import com.seckill.common.error.CommonException;
import com.seckill.common.error.EnumCommonError;
import com.seckill.common.response.CommonReturn;
import com.seckill.pojo.Item;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author yinren
 * @date 2019/6/30
 */
@RestController
@RequestMapping("/item")
public class ItemController {

    @Autowired
    private ItemService itemService;

    @RequestMapping("/list")
    public CommonReturn itemList(String classify) throws CommonException {
        if (StringUtils.isEmpty(classify)) {
            throw new CommonException(EnumCommonError.ITEM_CLASSIFY_NULL); //类别请求错误
        }
        List<Item> items = itemService.list(classify);
        if (items == null || items.size() == 0) {
            throw new CommonException(EnumCommonError.ITEM_LIST_NULL); //请求类别为空
        }
        return CommonReturn.create(items);
    }

    @RequestMapping("/get")
    public CommonReturn getById(Integer item_id) throws CommonException {
        if (StringUtils.isEmpty(String.valueOf(item_id))) {
            throw new CommonException(EnumCommonError.ITEM_ID_NULL); //item_id 为收到
        }
        Item item = itemService.getById(item_id);
        if (item == null) {
            throw new CommonException(EnumCommonError.ITEM_ID_NULL); //商品为空
        }
        return CommonReturn.create(item);
    }
    @RequestMapping("/getbyprice")
    public CommonReturn getByPrice(Integer item_price) throws CommonException {
        if (StringUtils.isEmpty(String.valueOf(item_price))) {
            throw new CommonException(EnumCommonError.ITEM_ID_NULL); //item_id 为收到
        }
        List<Item> items = itemService.getByPrice(item_price);
        if (items == null || items.size() == 0) {
            throw new CommonException(EnumCommonError.ITEM_LIST_NULL); //请求类别为空
        }
        return CommonReturn.create(items);
    }



}
