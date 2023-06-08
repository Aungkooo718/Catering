package com.exercise.repo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.exercise.model.Restaurant;

public interface RestaurantRepository extends JpaRepository<Restaurant,Integer>{
	@Query("SELECT t FROM Restaurant t WHERE t.id = 1")
    Restaurant findInfo();
	@Query("SELECT t FROM Restaurant t WHERE t.id =? 1")
	Restaurant findByRestaurantId(int id);
	@Query(value = "SELECT * FROM restaurant where status!='Not OK'", nativeQuery = true)
    List<Restaurant> getAllRestaurants();
	
	@Query(value = "SELECT * FROM restaurant where status=='OK'", nativeQuery = true)
    Restaurant getRestaurant();
	
	@Modifying
	@Transactional
	@Query("Update Restaurant t Set t.name=?1,t.email=?2,t.phone=?3,t.paymentReceiveName=?4,t.price=?5,t.address=?6,t.city=?7 WHERE t.id = ?8")
	int UpdateRestaurant(String name,String email,String phone,String paymentname,double price,String address, String city,int id);
}
