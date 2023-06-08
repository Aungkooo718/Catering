package com.exercise;
import static org.hamcrest.Matchers.*;
import static org.junit.Assert.assertNotNull;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import java.security.Principal;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.Employee;

@SpringJUnitConfig
@SpringBootTest
@AutoConfigureMockMvc
public class EmployeeControllerTest {

    @Autowired
    private MockMvc mockMvc;
    @Autowired
    EmployeeRepository employeeRepository;

    @Test
    public void testDeleteEmployee() throws Exception {
        String staffId = "123";

        mockMvc.perform(MockMvcRequestBuilders.post("/deleteEmployee")
                .param("staffId", staffId)
                .principal(() -> "user"))
                .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }
    
    

    @Test
    public void testShowUpdateForm() throws Exception {
        String staffId = "123";

        mockMvc.perform(MockMvcRequestBuilders.get("/editEmployee/{id}", staffId))
                .andExpect(MockMvcResultMatchers.status().is3xxRedirection()); // Expect a redirect status
    }


    @Test
    public void testUpdateUser() throws Exception {
        Employee emp = new Employee();
        emp.setStaffId("123");
        emp.setName("John");
        emp.setEmail("john@example.com");
        emp.setDoorLogNo("456");
        emp.setRole("ROLE_USER");
        emp.setDepartment("IT");

        mockMvc.perform(MockMvcRequestBuilders.post("/updateEmployee")
                .contentType(MediaType.APPLICATION_FORM_URLENCODED)
                .flashAttr("emp", emp))
                .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }

    @Test
    public void testEmployeeReport() throws Exception {
    	mockMvc.perform(MockMvcRequestBuilders.get("/EmployeeReport"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());

              
    }
    @Test
    public void testGenerateReport() throws Exception {
        String format = "pdf";

        mockMvc.perform(MockMvcRequestBuilders.get("/report/{format}", format))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }

    @Test
    public void testGetAllEmployee() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/employees"))
        		.andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }
    @Test
    public void testDisplayVoucher() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/addVoucher"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }

    @Test
    public void testCancelOrder() throws Exception {
        int voucherID = 123;

        mockMvc.perform(MockMvcRequestBuilders.get("/cancelOrder")
                .param("ID", String.valueOf(voucherID)));
           
    }
    
  

    @Test
    public void testViewVoucher() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/viewVoucher"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }

    @Test
    public void testPaid() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/paid"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }
    
    @Test
    public void testPaymentVoucherEndpoint() throws Exception {
        mockMvc.perform(post("/paymentVoucher")
                .param("voucherID", "123")
                .param("cashier", "John Doe")
                .param("approved", "Approved"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }

    @Test
    public void testOrderEndpoint() throws Exception {
        mockMvc.perform(get("/order"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
               
    }
    
    @Test
    public void testOrderAfterEndpoint() throws Exception {
        // Mock the request and send it to the "orderAfter" endpoint
        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.post("/orderAfter")
                .param("param1", "value1")
                .param("param2", "value2")
                // Add any required request parameters or form data
        )
        		 .andExpect(MockMvcResultMatchers.status().is3xxRedirection())
              
                .andReturn();

        // Assert the response or perform additional checks
        // For example, you can check the model attributes returned in the response
        // using the `andExpect(model().attributeExists("attributeName"))` method.
    }

    @Test
    public void testMonthlyVoucherEndpoint() throws Exception {
        // Mock the request and send it to the "monthlyVoucher" endpoint
        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.get("/monthlyVoucher")
                .param("month", "1")
                // Add any required request parameters
        )
        		 .andExpect(MockMvcResultMatchers.status().is3xxRedirection())

                .andReturn();

        // Assert the response or perform additional checks
        // For example, you can check the model attributes returned in the response
        // using the `andExpect(model().attributeExists("attributeName"))` method.
    }
    @Test
    public void testViewCostEndpoint() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/viewCost"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }

    @Test
    public void testLunchInfoEndpoint() throws Exception {
        MockHttpSession session = new MockHttpSession();
        mockMvc.perform(MockMvcRequestBuilders.get("/lunchInfo")
                .session(session))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection())
                // Add any additional assertions as needed
                .andReturn();
        
        // Example assertion for checking session attribute
        Object lunchView = session.getAttribute("lunchView");
    }

    @Test
    public void testViewAboutEndpoint() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get("/about"))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
    }

    @Test
    public void testConvertToImageEndpoint() throws Exception {
        // Create a sample PDF file for testing
        // Modify the file path and content according to your needs
        MockMultipartFile file = new MockMultipartFile("file", "sample.pdf", "application/pdf", "Sample PDF Content".getBytes());

        mockMvc.perform(MockMvcRequestBuilders.multipart("/convert-to-image")
                .file(file))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection())
                // Add any additional assertions as needed
                .andReturn();
    }
    @Test
    public void testViewProfileEndpoint() throws Exception {
        MockHttpSession session = new MockHttpSession();
        Principal principal = () -> "testUser";

        mockMvc.perform(MockMvcRequestBuilders.get("/viewProfile")
                .session(session)
                .principal(principal))
        .andExpect(MockMvcResultMatchers.status().is3xxRedirection());
              
    }

    @Test
    public void testChangeEmailEndpoint() throws Exception {
        MockHttpSession session = new MockHttpSession();
        session.setAttribute("Email", "test@example.com");

        mockMvc.perform(MockMvcRequestBuilders.post("/changeEmail")
                .param("employeeName", "John Doe")
                .param("employeeEmail", "john.doe@example.com")
                .session(session))
                .andExpect(MockMvcResultMatchers.status().is3xxRedirection());

        // Add any additional assertions as needed
    }

    @Test
    public void testChangePasswordEndpoint() throws Exception {
        MockHttpSession session = new MockHttpSession();
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String oldPassword = "oldPassword";
        String newPassword = "newPassword";
        String confirmPassword = "newPassword";
        String encodedPassword = encoder.encode(oldPassword);

        Principal principal = () -> "testUser";
        session.setAttribute("errorMessage", "Old password is incorrect !!");

        // Mock the employee retrieval from the repository
      

        mockMvc.perform(MockMvcRequestBuilders.post("/changePassword")
                .param("oldPassword", oldPassword)
                .param("newPassword", newPassword)
                .param("confirmPassword", confirmPassword)
                .session(session)
                .principal(principal))
                .andExpect(MockMvcResultMatchers.status().is3xxRedirection());

        // Add any additional assertions as needed
    }

}
