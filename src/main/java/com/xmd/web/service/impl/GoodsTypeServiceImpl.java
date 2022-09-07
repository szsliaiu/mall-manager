package com.xmd.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xmd.web.dao.GoodsMapper;
import com.xmd.web.dao.GoodsTypeMapper;
import com.xmd.web.entity.GoodsType;
import com.xmd.web.service.GoodsTypeService;

@Transactional
@Service
public class GoodsTypeServiceImpl implements GoodsTypeService{

	@Autowired
	private GoodsTypeMapper goodsTypeMapper;
	
	@Autowired
	private GoodsMapper goodsMapper;
	
	@Override
	public List<GoodsType> getAllTypes() {
		return goodsTypeMapper.selectAllTypes();
	}
	/**
	 * 定义删除分类数据的业务逻辑
	 * 因为分类表中的数据作为商品表中的数据的外键引用存在，
	 * 所以在删除分类之前必须保证引用它的商品数据外键值重置（或引用它的商品数据已被删除）
	 */

	@Override
	public void deletetype(int id) {
		goodsMapper.updateByTypeId(id);
		goodsTypeMapper.deleteByPrimaryKey(id);
	}

}
