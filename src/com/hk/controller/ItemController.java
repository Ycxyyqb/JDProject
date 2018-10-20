package com.hk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hk.pojo.Item;
import com.hk.pojo.ItemDesc;
import com.hk.service.ItemDescService;
import com.hk.service.ItemService;

@Controller
public class ItemController {
    @Autowired
	private ItemService itemService;
    
    @Autowired
    private ItemDescService itemDescService;
    
    @Value("SESSION_USER")
    private String SESSION_USER;
    
    @RequestMapping(value = "/item/{id}")
	public String getItemPageById(@PathVariable Long id,Model model) {
		
		Item item = itemService.findItemById(id);
		ItemDesc itemDesc = itemDescService.findItemDescByItemId(id);
		model.addAttribute("item", item);
		model.addAttribute("itemDesc", itemDesc);
		return "item";
	}
	
}
