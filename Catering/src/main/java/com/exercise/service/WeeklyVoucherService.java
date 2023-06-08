package com.exercise.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.dto.Vouchers;
import com.exercise.dto.WeeklyVoucher;

import com.exercise.repo.WeeklyVoucherRepository;

@Service
public class WeeklyVoucherService {
	
	
	@Autowired
	WeeklyVoucherRepository weekvoucherRepo;
	
	
	public WeeklyVoucherService(WeeklyVoucherRepository weekvoucherRepo2) {
		// TODO Auto-generated constructor stub
		this.weekvoucherRepo =weekvoucherRepo2;
	}

	public WeeklyVoucher Save(WeeklyVoucher voucher) {
		WeeklyVoucher s=weekvoucherRepo.save(voucher);
		return s;
	}
	
	public List<WeeklyVoucher> findByVoucher(String startDate,String endDate) {
		List<WeeklyVoucher> voucher=weekvoucherRepo.findByVoucher(startDate,endDate);
		return voucher;
	}
	
	@Transactional
	public WeeklyVoucher updateWeeklyVoucher(WeeklyVoucher voucher) {
		
		
	    WeeklyVoucher vouchers= weekvoucherRepo.findById(voucher.getId());
	            

	    vouchers.setId(voucher.getId());
	    vouchers.setApproved(voucher.getApproved());
	    vouchers.setCashier(voucher.getCashier());
	    vouchers.setReceived(voucher.getReceived());
	    vouchers.setStatus(voucher.getStatus());
	    vouchers.setDescription(voucher.getDescription());
	    vouchers.setNoOfPax(voucher.getNoOfPax());
	    vouchers.setPaymentDate(voucher.getPaymentDate());
	    vouchers.setPrice(voucher.getPrice());
	    vouchers.setStartDate(voucher.getStartDate());
	    vouchers.setTotalAmount(voucher.getTotalAmount());
	    
	    return  weekvoucherRepo.save(vouchers);
	}





}
