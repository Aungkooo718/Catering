package com.exercise.repo;
import com.exercise.model.*;

import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;

public interface HolidayRepository extends JpaRepository<Holiday,Long>{

	Holiday  findByDate(Date date);
}
