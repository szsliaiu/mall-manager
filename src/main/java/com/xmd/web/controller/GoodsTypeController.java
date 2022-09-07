package com.xmd.web.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xmd.web.entity.GoodsType;
import com.xmd.web.service.GoodsTypeService;

@Controller
@RequestMapping("/admin/goodstype")

public class GoodsTypeController {
	
	@Autowired
	private GoodsTypeService goodsTypeService;
	
	@RequestMapping("/getAllTypes")
	public String getAllTypes(Map<String, Object> map) {
		List<GoodsType> typeList = goodsTypeService.getAllTypes();
		map.put("typeList", typeList);
		return "admin/goodstype/goodstype_list";
	}
	
	@RequestMapping("/deletetype/{id}")
	public String deletetype(@PathVariable int id) {
			goodsTypeService.deletetype(id);
		return "redirect:/admin/goodstype/getAllTypes";
	}
}
