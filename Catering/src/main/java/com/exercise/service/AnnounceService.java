package com.exercise.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.model.Announce;

import com.exercise.repo.AnnounceRepo;


@Service
public class AnnounceService {

 @Autowired
 private AnnounceRepo repo;
 
 public Announce createImage(Announce announce) {
  return repo.save(announce);
  
 }
 public List<Announce> getAllImage(){
  return repo.findAll();
  
 }
 
 public Optional<Announce> findAnnounceById(long id){
  return repo.findById(id);
 }
 
 public Announce getLatestAnnounce() {
     return repo.findFirstByOrderByIdDesc();
 }
 public List<Announce> findExpiredAnnouncements() {
	    return repo.findAllExpired();
	  }

 
 
 
}