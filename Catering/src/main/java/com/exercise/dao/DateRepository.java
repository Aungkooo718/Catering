package com.exercise.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.exercise.dto.DateRegister;
import com.exercise.dto.Employee;

public interface DateRepository extends JpaRepository<DateRegister,Long>{

}
