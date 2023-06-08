package com.exercise.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exercise.dto.DateRegister;
import com.exercise.dto.Vouchers;
import com.exercise.dto.register;
import com.exercise.model.AvoidMeat;
import com.exercise.repo.VoucherRepository;

@Service
public class VoucherService {
	
	@Autowired
	VoucherRepository voucherRepo;
	
public int getCount() {
		
		int  count=(int) voucherRepo.count();
		System.out.println("count : "+count);
		return count;
	}
public Vouchers Save(Vouchers voucher) {
	Vouchers s=voucherRepo.save(voucher);
	return s;
}


@Transactional
public Vouchers updateVoucher(Vouchers voucher) {
	
	
    Vouchers vouchers= voucherRepo.findById(voucher.getId());
            

    vouchers.setId(voucher.getId());
    vouchers.setApproved(voucher.getApproved());
    vouchers.setCashier(voucher.getCashier());
    vouchers.setReceived(voucher.getReceived());
    vouchers.setStatus(voucher.getStatus());
    vouchers.setWeeklyVoucher(voucher.getWeeklyVoucher());
    
    return  voucherRepo.save(vouchers);
}




}
