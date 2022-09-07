package com.xmd.web.service;

import java.util.List;

import com.xmd.web.entity.GoodsType;

public interface GoodsTypeService {
	
	public List<GoodsType> getAllTypes();

	public void deletetype(int id);
}
