package com.exercise.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.model.Image;
import com.exercise.repo.ImageRepository;


@Service
public class ImageService {

 @Autowired
 private ImageRepository repository;
 public Image createImage(Image image) {
  return repository.save(image);
  
 }
 public List<Image> getAllImage(){
  return repository.findAll();
  
 }
 
 public Optional<Image> findImageById(long id){
  return repository.findById(id);
 }
 
 public Image getLatestImage() {
     return repository.findFirstByOrderByIdDesc();
 }

 
 
 
 
}