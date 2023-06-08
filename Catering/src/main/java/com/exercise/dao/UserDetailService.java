package com.exercise.dao;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.exercise.dto.Employee;




public class UserDetailService implements UserDetailsService{
	@Autowired
	private EmployeeRepository empRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
		Employee emp=empRepository.findByEmail(username);
		if(emp==null || emp.getStatus().equals("Inactive")) {
			throw new UsernameNotFoundException("user Not found");
		}
		return new MyEmployeeDetail(emp);
	}

	public void setEmpRepository(EmployeeRepository empRepository2) {
		// TODO Auto-generated method stub
		this.empRepository = empRepository2;
	}

}
