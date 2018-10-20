package com.hk.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hk.pojo.Item;
import com.hk.service.ItemService;

@Controller
public class SearchController {
    @Autowired
	private ItemService itemService;
    
    @RequestMapping("/search.do")
    public String toSearch(String keyword, Model model) {
    	List<Item> itemList=itemService.findItemListByKeyword(keyword);
    	model.addAttribute("itemList", itemList);
    	return "search";
    }
    @RequestMapping("/message.do")
	public ModelAndView tomessage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/loginpagemessage");
		return mv;
	}
    @RequestMapping("/toCart")
    public ModelAndView toCart() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/cart");
		return mv;
	}
}
