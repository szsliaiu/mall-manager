package com.xmd.web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xmd.web.dao.AdminMapper;
import com.xmd.web.entity.Admin;
import com.xmd.web.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public Admin getAdminByUsernameAndPassword(String username, 
				String password) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("username", username);
		param.put("password", password);
		
		return adminMapper.selectAdminByUsernameAndPassword(param);
	}
	
	@Override
	public List<Admin> getAllAdmins(){
		return adminMapper.selectAllAdmins();
	}

	@Override
	public void adminAddSave(Admin admin) {
		adminMapper.insert(admin);
	}

	@Override
	public void deleteAdminById(int id) {
		adminMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Admin getAdmin(int id) {
		
		return 	adminMapper.selectByPrimaryKey(id);
	}

	@Override
	public void adminEditSave(Admin admin) {
		adminMapper.updateByPrimaryKey(admin);
	}

}
