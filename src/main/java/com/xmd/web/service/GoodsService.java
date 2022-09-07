package com.xmd.web.service;

import java.util.List;

import com.xmd.web.entity.Goods;

public interface GoodsService {

	public List<Goods> getAllGoods();

	public void goodsAdd(Goods goods);

	public Goods getGood(int id);

	public String getImgById(int id);

	public void editPic(int id, String path);

	public List<Goods> getAllGoodsByStatusAs1();
	
}
