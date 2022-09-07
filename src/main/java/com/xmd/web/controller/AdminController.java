package com.xmd.web.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.xmd.web.entity.Admin;
import com.xmd.web.service.AdminService;

@Controller
@RequestMapping("/admin")
@SessionAttributes({"admin","error"})
public class AdminController {

	@Autowired
	private AdminService adminService;
	/**
	 * 将请求转发到登录页面
	 */
	@RequestMapping("/toLogin")
	public String toLoginPage() {
		return "admin/admin_login";
	}
	/**
	 * 处理用户登录请求
	 */
	@RequestMapping("/login")
	public String login(String username , String password,
			Map<String, Object> map) {
		Admin admin = adminService.getAdminByUsernameAndPassword(username, password);
		System.out.println("admin = " + admin);
		if(admin != null && admin.getName() != null ) {
			map.put("admin", admin);
			return "admin/index";
		}else {
			map.put("error", "用户名与密码不匹配！");
			return "redirect:/admin/toLogin";
		}
	}
	
	@RequestMapping("/getIndexV3")
	public String getIndexV3() {
		return  "admin/index_v3";
	}
	
	@RequestMapping("/getAllAdmins")
	public String getAllAdmins(Map<String, Object> map) {
		List<Admin> adminList =  adminService.getAllAdmins();
		map.put("adminList", adminList);
		return "admin/admin/admin_list";
		
	}
	
	@RequestMapping("/toAdd")
	public String toAdd() {
		return "admin/admin/admin_add";
	}
	
	@RequestMapping("/adminAddSave")
	public String adminAddSave(Admin admin,Map<String, Object> map) {
		adminService.adminAddSave(admin);
		map.put("message", "添加成功!");
		return "forward:/admin/toAdd";
	}
	
	@RequestMapping("/deleteAdmin/{id}")
	public String deteleAdmin(@PathVariable int id) {
		adminService.deleteAdminById(id);
		return "redirect:/admin/getAllAdmins";
	}
	
	@RequestMapping("/getAdmin/{id}")
	public String getAdmin( @PathVariable int id,Map<String, Object> map) {
		Admin admin = adminService.getAdmin(id);
		map.put("v", admin);
		return "admin/admin/admin_edit";
	}
	
	@RequestMapping("/adminEditSave")
	public String adminEditSave(Admin admin,Map<String, Object> map) {
		adminService.adminEditSave(admin);
		map.put("message", "修改成功!");
		return "forward:/admin/getAdmin/"+admin.getId();	
	}
	
}
