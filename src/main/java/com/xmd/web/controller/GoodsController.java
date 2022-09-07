package com.xmd.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.xmd.web.entity.Goods;
import com.xmd.web.entity.GoodsType;
import com.xmd.web.service.GoodsService;
import com.xmd.web.service.GoodsTypeService;
import com.xmd.web.util.FileUploadUtil;

@Controller
@RequestMapping("/admin")
public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private GoodsTypeService goodsTypeService;
	
	@RequestMapping("/goods/toGoodPicEdit")
	public String toGoodPicEdit(int id , MultipartFile picture , Map<String, Object> map, HttpServletRequest request) {
		//保存上传的文件到服务器
		String path = FileUploadUtil.upload(picture,request);
		//去修改数据库的商品数据（picture字段值）
		goodsService.editPic(id,path);
		map.put("message", "缩略图上传成功！");
		return "forward:/admin/goods/getImg/"+id;
	}
	
	
	@RequestMapping("/goods/getImg/{id}")
	public String getImg(@PathVariable int id ,Map<String, Object> map) {
		String picture =  goodsService.getImgById(id);
		map.put("id", id);
		map.put("picture", picture);		
		return "admin/goods/good_pic_edit";
	}
	
	
	@RequestMapping("/goods/getGood/{id}")
	public String getGood(@PathVariable int id,Map<String, Object> map) {
		Goods good = goodsService.getGood(id);
		List<GoodsType> typeList = goodsTypeService.getAllTypes();
		map.put("goods", good);
		map.put("typeList", typeList);		
		return "admin/goods/good_edit";
	}
	
	@RequestMapping("/goods/getAllGoods")
	public String getAllGoods(Map<String, Object> map) {
		List<Goods> goodsList = goodsService.getAllGoods();
		map.put("goodsList", goodsList);
		return "admin/goods/goods_list";
	}
	
	@RequestMapping("/goods/toAdd")
	public String toAdd(Map<String, Object> map) {
		List<GoodsType> typeList = goodsTypeService.getAllTypes();
		map.put("typeList", typeList);
		return "admin/goods/good_add";
	}
	
	@RequestMapping("/goods/toGoodAdd")
	public String toGoodAdd(Goods goods,Map<String, Object> map) {
		goodsService.goodsAdd(goods);
		map.put("message", "添加成功！");
		return "forward:/admin/goods/toAdd";
	}
	

}
