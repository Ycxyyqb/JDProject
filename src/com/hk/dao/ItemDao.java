package com.hk.dao;

import java.util.List;

import com.hk.pojo.Item;

public interface ItemDao {
    /**
     * 获得所有的商品列表
     */
	List<Item> findItemList();
	
	/**
	 * 根据title中的关键字查询上商品
	 */
	List<Item> findItemListByKeyword(String keyword);
	
	/**
	 * 根据商品id查询商品信息
	 */
	Item findItemByid(long id);
}
