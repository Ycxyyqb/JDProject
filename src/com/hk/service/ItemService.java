package com.hk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.dao.ItemDao;
import com.hk.pojo.Item;

@Service
public class ItemService {
    @Autowired
	private ItemDao itemDao;
    
    public List<Item> findItemList(){
    	return itemDao.findItemList();
    }
    
    public List<Item> findItemListByKeyword(String keyword) {
		return itemDao.findItemListByKeyword(keyword);
	}

	
	public Item findItemById(long id) {
		return itemDao.findItemByid(id);
	}
}
