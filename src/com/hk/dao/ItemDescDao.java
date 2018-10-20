package com.hk.dao;

import com.hk.pojo.ItemDesc;

public interface ItemDescDao {
	/**
	 * 根据商品id查询商品信息
	 * @param itemId
	 * @return
	 */
	ItemDesc findItemDescByItemId(Long itemId);
}
