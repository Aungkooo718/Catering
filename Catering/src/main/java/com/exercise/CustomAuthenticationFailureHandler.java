package com.exercise;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.Employee;
import com.exercise.service.EmployeeService;



@Component
public class CustomAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {
	
	@Autowired
	 EmployeeRepository EmpRep;
	@Autowired
	 EmployeeService Empservice;



    private static final int MAX_FAILES_ATTEMPTS = 3;
   

    
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
    	String email = request.getParameter("username");
    	Employee user=EmpRep.findByEmail(email);
    	
       if(user!=null) {
    	   System.out.println("Your Password Incorrect");
    	   if(user.getStatus().equals("Active") && user.isAccountNonLocked()) {
    		   System.out.println("A");
    		   if(user.getFailedAttempt() < MAX_FAILES_ATTEMPTS - 1 ) {
    			   System.out.println("B");
    			   Empservice.increaseFailedAttempt(user);
    			   request.getSession().setAttribute("message", exception.getMessage());
    			   super.setDefaultFailureUrl("/login?error1");
    			
    		   }else {
    			   System.out.println("C");
    			   Empservice.lock(user);
    			   super.setDefaultFailureUrl("/login?error2");
    			   long lockTimeInMillis =user.getLockTime().getTime();
    			   long lockTimeInSeconds = lockTimeInMillis / 1000;
    			   request.getSession().setAttribute("lockExpirationTime", lockTimeInSeconds);
    			   request.getSession().setAttribute("user", user.getEmail());
    			   
    			   exception = new LockedException("Your Account has been locked");
    			   request.setAttribute("message", exception);
    			   
    		   }
    	   }
    	   else if(!user.isAccountNonLocked()) {
    		   if(Empservice.unlock(user)) {
    			   
    			   exception =new LockedException("Your Account has been Unlocked");
    			   
    			   request.setAttribute("message", exception);
    			   
    		   }
    		   System.out.println("D");
    	   }
       }else {
    	   System.out.println("email not exit");
       }
       
       
      
       super.onAuthenticationFailure(request, response, exception);

    }

   
    // Rest of the class implementation...
}
