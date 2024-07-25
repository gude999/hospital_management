package com.hospitalmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospitalmanagement.dao.AdminDao;
import com.hospitalmanagement.model.Admin;

@Service("adminService")
public class AdminServiceImp implements AdminService {
	
	@Autowired
	private AdminDao adminDao;

	@Override
	public Admin addAdmin(Admin admin) {
		return adminDao.save(admin);
	}

	@Override
	public void deleteAdminById(Integer id) {
        adminDao.deleteById(id);
	}

	@Override
	public Admin getAdminById(Integer id) {
		Optional<Admin> optional = adminDao.findById(id);
		
		if(optional.isPresent())
			return optional.get();
		else
			return null;
	}

	@Override
	public Admin updateAdmin(Admin admin) {
		return adminDao.save(admin);
	}

	@Override
	public Admin loginAdmin(String username, String password) {
		
		return adminDao.findByUsernameAndPassword(username, password);
	}

	@Override
	public List<Admin> getAllAdmin() {
		return adminDao.findAll();
	}

}
