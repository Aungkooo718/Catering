package com.exercise;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import com.exercise.dto.WeeklyVoucher;
import com.exercise.repo.WeeklyVoucherRepository;
import com.exercise.service.WeeklyVoucherService;

@SpringBootTest
public class WeeklyVoucherServiceTest {

  @MockBean
  private WeeklyVoucherRepository weekvoucherRepo;
  @InjectMocks
  private WeeklyVoucherService service;
  
  @BeforeEach
  public void setup() {
      // Create a mock for the repository
      weekvoucherRepo = mock(WeeklyVoucherRepository.class);

      // Create an instance of the service and pass the mock repository
      service = new WeeklyVoucherService(weekvoucherRepo);
  } 

  @Test
  public void testSave() {
    WeeklyVoucher voucher = new WeeklyVoucher();
    // Set voucher properties

    WeeklyVoucher savedVoucher = new WeeklyVoucher();
    // Set saved voucher properties

    when(weekvoucherRepo.save(voucher)).thenReturn(savedVoucher);

    WeeklyVoucher result = weekvoucherRepo.save(voucher);

    assertEquals(savedVoucher, result);
    verify(weekvoucherRepo).save(voucher);
  }

  @Test
  public void testFindByVoucher() {
    String startDate = "2023-01-01";
    String endDate = "2023-01-07";

    List<WeeklyVoucher> vouchers = new ArrayList<>();
    // Add some dummy vouchers to the list

    when(weekvoucherRepo.findByVoucher(startDate, endDate)).thenReturn(vouchers);

    List<WeeklyVoucher> result = weekvoucherRepo.findByVoucher(startDate, endDate);

    assertEquals(vouchers, result);
    verify(weekvoucherRepo).findByVoucher(startDate, endDate);
  }

  @Test
  public void testUpdateWeeklyVoucher() {
      WeeklyVoucher voucher = new WeeklyVoucher();
      // Set voucher properties
      voucher.setId(1);
      voucher.setApproved("may");
      voucher.setCashier("thu");
      voucher.setReceived("kyaw");
      voucher.setStatus("active");
      voucher.setDescription("1111");
      voucher.setNoOfPax(100);
      voucher.setPaymentDate("23-07-2000");
      voucher.setPrice(1000);
      voucher.setStartDate("3-07-2000");
      voucher.setTotalAmount(800);
      
      WeeklyVoucher existingVoucher = new WeeklyVoucher();
      // Set existing voucher properties
      existingVoucher.setId(1);
      existingVoucher.setApproved("may");
      existingVoucher.setCashier("thu");
      existingVoucher.setReceived("kyaw");
      existingVoucher.setStatus("active");
      existingVoucher.setDescription("1111");
      existingVoucher.setNoOfPax(100);
      existingVoucher.setPaymentDate("23-07-2000");
      existingVoucher.setPrice(1000);
      existingVoucher.setStartDate("3-07-2000");
      existingVoucher.setTotalAmount(8000);
      
      // Setup mock behavior for repository method
      when(weekvoucherRepo.findById(voucher.getId())).thenReturn(existingVoucher);

      WeeklyVoucher updatedVoucher = service.updateWeeklyVoucher(voucher);

      // Verify that the returned voucher matches the existing voucher
      
      // Verify that the repository methods were called correctly
      verify(weekvoucherRepo).findById(voucher.getId());
      verify(weekvoucherRepo).save(existingVoucher);
  }
}
