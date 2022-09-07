package com.xmd.web.dao;

import java.util.List;

import com.xmd.web.entity.Goods;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
    
    int updateByTypeId(int typeId);

	List<Goods> selectAllGoods();

	String getImgById(int id);

	void editPic(int id, String path);

	List<Goods> getAllGoodsByStatusAs1();
}