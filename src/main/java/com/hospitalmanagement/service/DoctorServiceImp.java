package com.hospitalmanagement.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hospitalmanagement.dao.DoctorDao;
import com.hospitalmanagement.model.Doctor;

@Service("doctorService")
public class DoctorServiceImp implements DoctorService {

	@Autowired
	private DoctorDao doctorDao;
	
	@Override
	public Doctor addDoctor(Doctor doctor) {
		return doctorDao.save(doctor);
	}

	@Override
	public void deleteDoctorById(Integer id) {
		doctorDao.deleteById(id);
	}

	@Override
	public Doctor getDoctorById(Integer id) {
        Optional<Doctor> optional = doctorDao.findById(id);
		
		if(optional.isPresent())
			return optional.get();
		else
			return null;
	}

	@Override
	public Doctor updateDoctor(Doctor doctor) {
		return doctorDao.save(doctor);
	}

	@Override
	public Doctor loginDoctor(String username, String password) {
		return doctorDao.findByUsernameAndPassword(username, password);
	}

	@Override
	public List<Doctor> getAllDoctors() {
		return doctorDao.findAll();
	}

	@Override
	public Long getDoctorsTotalCounts() {
		return doctorDao.getTotalCount();
	}

	@Override
	public List<Doctor> getDoctorsByName(String doctorName) {
		return doctorDao.findByFirstnameContainingIgnoreCase(doctorName);
	}

	@Override
	public Long getDoctorsCountByDate(String registereddate) {
		return doctorDao.countByRegisterdate(registereddate);
	}

}
