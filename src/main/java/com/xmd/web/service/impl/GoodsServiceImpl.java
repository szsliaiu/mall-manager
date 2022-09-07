package com.xmd.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xmd.web.dao.GoodsMapper;
import com.xmd.web.entity.Goods;
import com.xmd.web.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService{

	@Autowired
	private GoodsMapper goodsMapper;
	
	@Override
	public List<Goods> getAllGoods() {
		return goodsMapper.selectAllGoods();
	}

	@Override
	public void goodsAdd(Goods goods) {
		goodsMapper.insert(goods);
	}

	@Override
	public Goods getGood(int id) {
		return goodsMapper.selectByPrimaryKey(id);
	}

	@Override
	public String getImgById(int id) {
		return goodsMapper.getImgById(id);
	}

	@Override
	public void editPic(int id, String path) {
		goodsMapper.editPic(id,path);
	}

	@Override
	public List<Goods> getAllGoodsByStatusAs1() {
		return goodsMapper.getAllGoodsByStatusAs1();
	}

}
