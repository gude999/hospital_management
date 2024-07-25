package com.hospitalmanagement.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospitalmanagement.dao.PharmacistDao;
import com.hospitalmanagement.model.Patient;
import com.hospitalmanagement.model.Pharmacist;

@Service("pharmacistService")
public class PharmacistServiceImp implements PharmacistService {

	@Autowired
	private PharmacistDao pharmacistDao;
	
	@Override
	public Pharmacist addPharmacist(Pharmacist pharmacist) {
		return pharmacistDao.save(pharmacist);
	}

	@Override
	public void deletePharmacistById(Integer id) {
		pharmacistDao.deleteById(id);
	}

	@Override
	public Pharmacist getPharmacistById(Integer id) {
		Optional<Pharmacist> optional = pharmacistDao.findById(id);

		if (optional.isPresent())
			return optional.get();
		else
			return null;
	}

	@Override
	public Pharmacist updatePharmacist(Pharmacist pharmacist) {
		return pharmacistDao.save(pharmacist);
	}

	@Override
	public Pharmacist loginPharmacist(String username, String password) {
		return pharmacistDao.findByUsernameAndPassword(username, password);
	}

	@Override
	public Long getPharmacistsTotalCount() {
	    return pharmacistDao.getTotalCount();
	}

	@Override
	public List<Pharmacist> getPharmacistsByFirstName(String firstName) {
		return pharmacistDao.findByFirstnameContainingIgnoreCase(firstName);
	}

	@Override
	public Long getPharmacistCountByDate(String date) {
		return pharmacistDao.countByRegisterdate(date);
	}
	
}
