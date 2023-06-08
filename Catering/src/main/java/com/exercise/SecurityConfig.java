
package com.exercise;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.thymeleaf.extras.springsecurity5.dialect.SpringSecurityDialect;

import com.exercise.dao.UserDetailService;



@Configuration
@EnableAspectJAutoProxy(proxyTargetClass = true)
public class SecurityConfig {
	@Bean
	public UserDetailService  userDetailService() {
		return new UserDetailService();
	}
	
	@Bean
	  public BCryptPasswordEncoder passwordEncoder() {
	    return new BCryptPasswordEncoder();
	  }

	 @Bean
	  public SecurityFilterChain filterChain(HttpSecurity http,  @Value("${spring.security.remember-me.key}") String rememberMeKey,
              @Value("${spring.security.remember-me.token-validity-seconds}") int tokenValiditySeconds) throws Exception {

	  http.csrf().disable().authorizeRequests().antMatchers("/css/**","/scss/**","/js/**","/images/**","/fonts/**","/vendor/**","/USR001","/USRAfter","/forgot_password","/reset_password")
	  .permitAll()
	  .antMatchers("/order","/avoidMeat","/menuImport","/employees","/viewVoucher","/monthlyVoucher","/lunchInfo","/last-date-doorLogNos","/restaurant","/PriceTime","/holidayView","/feedback","/doorlog").hasRole("ADMIN")
	  .antMatchers("/css/**","/js/**","/images/**","/fonts/**").permitAll()
	  .antMatchers("/login").permitAll()
	  .anyRequest()
	        .authenticated().and()
	        .formLogin().defaultSuccessUrl("/",true)
	        .loginPage("/login").failureHandler(authenticationFailureHandler())
	       
	        .permitAll()
	        .and()
	        .rememberMe()
            .key(rememberMeKey)
            .tokenValiditySeconds(tokenValiditySeconds).and()
	        .logout().invalidateHttpSession(true)
	        .clearAuthentication(true).logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
	        .logoutSuccessUrl("/login")
	        .permitAll().and()
	        .exceptionHandling().accessDeniedHandler(new CustomAccessDeniedHandler());
	    return http.build();
	  }
	 public class CustomAccessDeniedHandler implements AccessDeniedHandler {
	        @Override
	        public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException ex) throws IOException, ServletException {
	            response.sendRedirect(request.getContextPath() + "/403");
	        }
	    }

	 


	  @Bean
	  public SpringSecurityDialect springSecurityDialect() {
	    return new SpringSecurityDialect();
	  }
	  
	  @Bean
	    public AuthenticationFailureHandler authenticationFailureHandler() {
		
	        return new CustomAuthenticationFailureHandler();
	    }
	 
	
	

}
