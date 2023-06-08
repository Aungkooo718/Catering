package com.exercise;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import java.security.Principal;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;


import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import org.springframework.test.web.servlet.MockMvc;


import com.exercise.dao.EmployeeRepository;
import com.exercise.dao.RegisterRepository;
import com.exercise.dto.Employee;
import com.exercise.repo.AvoidMeatRepository;
import com.exercise.repo.HolidayRepository;
import com.exercise.service.AvoidMeatService;
import com.exercise.service.DateRegisterService;
import com.exercise.service.ExcelService;
import com.exercise.service.RegisterService;


@SpringBootTest
@AutoConfigureMockMvc
public class RegisterControllerTest {


 
  @MockBean
  private RegisterRepository registerRepository;

  @MockBean
  private ExcelService excelService;

  @MockBean
  private RegisterService registerService;

  @MockBean
  private AvoidMeatService avoidMeatService;

  @MockBean
  private EmployeeRepository employeeRepository;

  @MockBean
  private AvoidMeatRepository avoidMeatRepository;

  @MockBean
  private HolidayRepository holidayRepository;

  @MockBean
  private DateRegisterService dateRegisterService;
  @Autowired
  private MockMvc mockMvc;


  @Test
  public void testSaveStudent() throws Exception {
    Employee emp = new Employee();
    emp.setDoorLogNo("123");
    emp.setEmail("test@example.com");
    emp.setName("John Doe");
    emp.setStaffId("456");
    when(employeeRepository.findByEmail(toString())).thenReturn(emp);

    mockMvc.perform(post("/addRegister")
        .param("lunchregister", "2023-05-22")
        .param("avoidMeatId", "1,2")
        .param("emailnoti", "true"))
        .andExpect(status().is3xxRedirection());

    // Add assertions for the behavior you expect
    // Verify the interactions with the registerRepository, registerService, and other dependencies
  }

  @Test
  public void testUpdateRegister() throws Exception {
    Employee emp = new Employee();
    emp.setDoorLogNo("123");
    emp.setEmail("test@example.com");
    emp.setName("John Doe");
    emp.setStaffId("456");
    when(employeeRepository.findByEmail(toString())).thenReturn(emp);

    mockMvc.perform(post("/updateLunch")
        .param("lunchregister", "2023-05-22")
        .param("avoidMeatId", "1,2"))
        .andExpect(status().is3xxRedirection());

    // Add assertions for the behavior you expect
    // Verify the interactions with the registerRepository, registerService, and other dependencies
  }

  @Test
  public void testUpdateController() throws Exception {
    Employee emp = new Employee();
    emp.setDoorLogNo("123");
    emp.setEmail("test@example.com");
    emp.setName("John Doe");
    emp.setStaffId("456");
    when(employeeRepository.findByEmail(toString())).thenReturn(emp);

    mockMvc.perform(post("/updateEmailNoti")
        .param("controllerValue", "true"));



    // Add assertions for the behavior you expect
    // Verify the interactions with the employeeRepository or any other dependencies
  }
  
  
}
