package com.hk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.dao.ItemDescDao;
import com.hk.pojo.ItemDesc;

@Service
public class ItemDescService {
    @Autowired
	private ItemDescDao itemDescDao;
    
    public ItemDesc findItemDescByItemId(long itemId) {
		return itemDescDao.findItemDescByItemId(itemId);
	}

}
