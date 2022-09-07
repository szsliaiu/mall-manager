package com.xmd.web.service;

import java.util.List;

import com.xmd.web.entity.Admin;

public interface AdminService {
	
	public Admin getAdminByUsernameAndPassword(String username,String password);

	public List<Admin> getAllAdmins();

	public void adminAddSave(Admin admin);

	public void deleteAdminById(int id);

	public Admin getAdmin(int id);

	public void adminEditSave(Admin admin);

}
