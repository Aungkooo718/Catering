package com.exercise.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.exercise.model.Image;

public interface ImageRepository extends JpaRepository<Image,Long>{

	Image findFirstByOrderByIdDesc();
	
}
