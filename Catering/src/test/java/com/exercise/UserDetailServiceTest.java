package com.exercise;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dao.MyEmployeeDetail;
import com.exercise.dao.UserDetailService;
import com.exercise.dto.Employee;


public class UserDetailServiceTest {
	  @InjectMocks
    private UserDetailService userDetailService;
	  @Mock
    private EmployeeRepository empRepository;

    @BeforeEach
    public void setup() {
        empRepository = mock(EmployeeRepository.class);
        userDetailService = new UserDetailService();
        userDetailService.setEmpRepository(empRepository);
    }

    @Test
    public void testLoadUserByUsername_ExistingUser_ReturnsUserDetails() {
        // Arrange
        String username = "john@example.com";
        Employee employee = new Employee();
        employee.setEmail(username);
        employee.setStatus("Active");

        when(empRepository.findByEmail(username)).thenReturn(employee);

        // Act
        MyEmployeeDetail userDetails = (MyEmployeeDetail) userDetailService.loadUserByUsername(username);

        // Assert
        assertEquals(username, userDetails.getUsername());
    }

    @Test
    public void testLoadUserByUsername_NonExistingUser_ThrowsUsernameNotFoundException() {
        // Arrange
        String username = "nonexisting@example.com";
        when(empRepository.findByEmail(username)).thenReturn(null);

        // Act and Assert
        assertThrows(UsernameNotFoundException.class,
                () -> userDetailService.loadUserByUsername(username));
    }

    @Test
    public void testLoadUserByUsername_InactiveUser_ThrowsUsernameNotFoundException() {
        // Arrange
        String username = "inactive@example.com";
        Employee employee = new Employee();
        employee.setEmail(username);
        employee.setStatus("Inactive");

        when(empRepository.findByEmail(username)).thenReturn(employee);

        // Act and Assert
        assertThrows(UsernameNotFoundException.class,
                () -> userDetailService.loadUserByUsername(username));
    }
}
