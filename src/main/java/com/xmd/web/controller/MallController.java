package com.xmd.web.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xmd.web.entity.Goods;
import com.xmd.web.entity.GoodsType;
import com.xmd.web.service.GoodsService;
import com.xmd.web.service.GoodsTypeService;

@RequestMapping("/mall")
@Controller
public class MallController {

	@Autowired
	private GoodsTypeService goodsTypeService;
	
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("/toProduct")
	public String toProduct(Map<String, Object> map) {
		List<GoodsType> typeList = goodsTypeService.getAllTypes();
		List<Goods> goodsList = goodsService.getAllGoodsByStatusAs1();
		map.put("typeList", typeList);
		map.put("goodsList", goodsList);
		map.put("goodsSize", goodsList.size());
		
		return "mall/product";
	}
}
