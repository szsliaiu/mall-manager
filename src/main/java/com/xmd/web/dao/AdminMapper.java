package com.xmd.web.dao;

import java.util.List;
import java.util.Map;

import com.xmd.web.entity.Admin;

public interface AdminMapper {

	int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

	Admin selectAdminByUsernameAndPassword(Map<String, Object> param);

	List<Admin> selectAllAdmins();
}