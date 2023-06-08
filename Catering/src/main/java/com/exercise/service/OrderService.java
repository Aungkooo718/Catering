package com.exercise.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.dto.OrderDTO;
import com.exercise.dao.ComAmountAndPrice;
import com.exercise.repo.OrderRepository;
import com.exercise.repo.OrderViewRepository;



@Service
public class OrderService {
	
	@Autowired
	OrderRepository orderRepo;
	@Autowired
	OrderViewRepository orderViewRepo;

	public OrderDTO Save(OrderDTO order) {
		OrderDTO s=orderRepo.save(order);
		return s;
	}
	public List<OrderDTO> findByVoucherId(int voucherId){
		List<OrderDTO> list=orderRepo.findByVoucherId(voucherId);
		return list;
	}
	
	public Integer getCountOfPeople(String startDate, String endDate) {
        return orderRepo.countPeopleByDateRange(startDate, endDate);
    }
	
	public Map<String, ComAmountAndPrice> getComPriceAndDateByDateRange(String startDate, String endDate) {
        List<Object[]> results = orderViewRepo.findOrderByDateRange(startDate, endDate);
        
        Map<String, ComAmountAndPrice> compriceAndDate = new HashMap<>();
        for (Object[] result : results) {
            int comAmount = (int) result[0];
            String date = (String) result[1];
            double comPrice=(double) result[2];
            double empPrice=(double) result[3];
            ComAmountAndPrice comAmountAndPrice = compriceAndDate.computeIfAbsent(date, k -> new ComAmountAndPrice());
            comAmountAndPrice.addComAmount(comAmount);
            comAmountAndPrice.addComPrice(comPrice);
            comAmountAndPrice.addEmpPrice(empPrice);
           // compriceAndDate.computeIfAbsent(date, k -> new ArrayList<>()).add(comAmount,comPrice);
        }
        
        return compriceAndDate;
    }
	
	
	public OrderDTO findByDate(String date){
		OrderDTO list=orderRepo.findByDate(date);
		
		return list;
	}
	
	@Transactional
	public void DeleteVoucherID(int voucherID) {
		orderRepo.deleteAllByVoucherId(voucherID);

	}
	

	
}
