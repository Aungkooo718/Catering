package com.exercise.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.exercise.model.PriceInfo;
import com.exercise.model.Restaurant;
import com.exercise.repo.PriceInfoRepository;
import com.exercise.repo.RestaurantRepository;

@Service
public class RestaurantService {
	@Autowired
	RestaurantRepository repo;
	@Autowired
	PriceInfoRepository priceRepo;
	public void addRestaurant(Restaurant res) {
		repo.save(res);
	}
	public List<Restaurant> getAllRestaurant() {
		return repo.findAll();
	}
	public void addPriceInfo(PriceInfo priceInfo) {
		priceRepo.save(priceInfo);
	}
	public Optional<Restaurant> getRestaurantById(int id){
		return repo.findById(id);
	}
	public Restaurant createRestaurant(Restaurant restaurant){
		return repo.save(restaurant);
	}
	public Restaurant updateRestaurant(Restaurant restaurant) {
		return repo.save(restaurant);
	}
	public void deleteRestaurant(int id) {
		repo.deleteById(id);
	}
	

	public int update(Restaurant user,int i)
	{
		int rs = 0;
		repo.save(user);
		rs = 1;
		return rs;
	} 
}
