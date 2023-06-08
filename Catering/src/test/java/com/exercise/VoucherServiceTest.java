package com.exercise;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;

import com.exercise.dto.Vouchers;
import com.exercise.repo.VoucherRepository;
import com.exercise.service.VoucherService;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

@SpringJUnitConfig
@SpringBootTest
class VoucherServiceTest {

    @Autowired
    private VoucherService voucherService;

    @MockBean
    private VoucherRepository voucherRepository;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testGetCount() {
        // Create test data
        long expectedCount = 5;
        when(voucherRepository.count()).thenReturn(expectedCount);

        // Perform the test
        int actualCount = voucherService.getCount();

        // Verify the result
        assertEquals(expectedCount, actualCount);
        verify(voucherRepository).count();
    }

    @Test
    void testSave() {
        // Create test data
        Vouchers voucher = new Vouchers();
        Vouchers expectedVoucher = new Vouchers();
        when(voucherRepository.save(voucher)).thenReturn(expectedVoucher);

        // Perform the test
        Vouchers actualVoucher = voucherService.Save(voucher);

        // Verify the result
        assertEquals(expectedVoucher, actualVoucher);
        verify(voucherRepository).save(voucher);
    }

    @Test
    void testUpdateVoucher() {
        // Create test data
        Vouchers voucher = new Vouchers();
        voucher.setId(1);
        Vouchers expectedVoucher = new Vouchers();
        expectedVoucher.setId(1);
        when(voucherRepository.findById(1)).thenReturn(voucher);
        when(voucherRepository.save(voucher)).thenReturn(expectedVoucher);

        // Perform the test
        Vouchers actualVoucher = voucherService.updateVoucher(voucher);

        // Verify the result
        assertEquals(expectedVoucher, actualVoucher);
        verify(voucherRepository).findById(1);
        verify(voucherRepository).save(voucher);
    }

    // Add more test methods for other methods in VoucherService if needed
}
