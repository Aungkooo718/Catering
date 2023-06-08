package com.exercise.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.exercise.dto.OrderDTO;


public interface OrderRepository extends JpaRepository<OrderDTO,Integer>{
	
	List<OrderDTO> findByVoucherId(int voucherId);
	@Query(value = "SELECT people,date FROM orderdto WHERE date BETWEEN :startDate AND :endDate", nativeQuery = true)
    List<Object[]> findOrderByDateRange(String startDate,String endDate);
    
    
    @Query(value = "SELECT people FROM orderdto WHERE date = :lastDate", nativeQuery = true)
    int findOrderQtyByLastDate(@Param("lastDate") String lastDate);
    
    @Query(value = "SELECT com_price FROM orderdto WHERE date = :lastDate", nativeQuery = true)
    double findComPriceByLastDate(@Param("lastDate") String lastDate);
    
    @Query(value = "SELECT emp_price FROM orderdto WHERE date = :lastDate", nativeQuery = true)
    double findEmpPriceByLastDate(@Param("lastDate") String lastDate);
    
    @Modifying
    @Query("DELETE FROM OrderDTO e WHERE e.voucherId = :voucherId")
    void deleteAllByVoucherId(@Param("voucherId") int voucherId);
    
    @Query("SELECT SUM(o.people) FROM OrderDTO o WHERE o.date BETWEEN ?1 AND ?2")
    Integer countPeopleByDateRange(String startDate, String endDate);
 


	
	OrderDTO findByDate(String date);

}
