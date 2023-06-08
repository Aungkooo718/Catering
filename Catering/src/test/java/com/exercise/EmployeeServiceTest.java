package com.exercise;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.Employee;
import com.exercise.service.EmployeeService;

public class EmployeeServiceTest {

    @Mock
    private EmployeeRepository employeeRepository;

    @InjectMocks
    private EmployeeService employeeService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testUpdateResetPasswordToken_ValidEmail_Success() throws Exception {
        String token = "abcd1234";
        String email = "test@example.com";
        Employee customer = new Employee();
        customer.setEmail(email);

        when(employeeRepository.findByEmail(email)).thenReturn(customer);
        when(employeeRepository.save(customer)).thenReturn(customer);

        employeeService.updateResetPasswordToken(token, email);

        assertEquals(token, customer.getResetPasswordToken());
        verify(employeeRepository).findByEmail(email);
        verify(employeeRepository).save(customer);
    }


    @Test
    public void testUpdateResetPasswordToken_InvalidEmail_ExceptionThrown() {
        String token = "abcd1234";
        String email = "nonexistent@example.com";

        when(employeeRepository.findByEmail(email)).thenReturn(null);

        Exception exception = assertThrows(Exception.class, () -> {
            employeeService.updateResetPasswordToken(token, email);
        });

        assertEquals("Could not find any customer with the email " + email, exception.getMessage());
        verify(employeeRepository).findByEmail(email);
    }
    
    @Test
    public void testGetByResetPasswordToken_ValidToken_Success() {
        String token = "abcd1234";
        Employee expectedEmployee = new Employee();
        expectedEmployee.setResetPasswordToken(token);

        when(employeeRepository.findByResetPasswordToken(token)).thenReturn(expectedEmployee);

       
        Employee result = employeeService.getByResetPasswordToken(token);

        assertEquals(expectedEmployee, result);
        verify(employeeRepository).findByResetPasswordToken(token);
    }

    @Test
    public void testUpdatePassword_ValidEmployee_Success() {
        String newPassword = "newPassword";
        Employee employee = new Employee();
        employee.setPassword("oldPassword");

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String encodedPassword = encoder.encode(newPassword);

        
        employeeService.updatePassword(employee, newPassword);

        assertEquals(null, employee.getResetPasswordToken());
        verify(employeeRepository).save(employee);
    }
}
