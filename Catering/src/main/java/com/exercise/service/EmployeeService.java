package com.exercise.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.time.Instant;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.Employee;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.ooxml.JRXlsxExporter;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
@Service
public class EmployeeService 
{
	
	@Autowired 
	EmployeeRepository empRepository;
	
	private static final long LOCK_TIME_DURATION = 60 * 1000;

  
    public boolean employeeReport() throws FileNotFoundException, JRException {
		  List<Employee> list= empRepository.findAll();
		  System.out.println(list);

		  File file= ResourceUtils.getFile("classpath:Catering_Employee.jrxml");
		  System.out.println(file);
		  JasperReport jsasperReport= JasperCompileManager.compileReport(file.getAbsolutePath());
		  JRBeanCollectionDataSource dataSource= new JRBeanCollectionDataSource(list);
		  Map<String,Object> parameters=new HashMap<>();
		  JasperPrint jasperPrint= JasperFillManager.fillReport(jsasperReport, parameters, dataSource);
		  System.out.print("AA");

		   JasperExportManager.exportReportToPdfFile(jasperPrint, "C:\\ako"+"\\EmployeeReport.pdf");

		  return true;

		 }
    public String exportReport(String reportFormat) throws FileNotFoundException, JRException {
        String path = "C:\\Users\\HP\\Desktop\\Angry";
        List<Employee> employees = empRepository.findAll();
        //load file and compile it
        File file = ResourceUtils.getFile("classpath:Catering_Employee.jrxml");
        JasperReport jasperReport = JasperCompileManager.compileReport(file.getAbsolutePath());
        JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(employees);
        Map<String, Object> parameters = new HashMap<>();
        parameters.put("createdBy", "CRUD Team");
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, dataSource);
        if (reportFormat.equalsIgnoreCase("html")) {
            JasperExportManager.exportReportToHtmlFile(jasperPrint, path + "\\employees.html");
        }
        if (reportFormat.equalsIgnoreCase("pdf")) {
            JasperExportManager.exportReportToPdfFile(jasperPrint, path + "\\employees.pdf");
        }
        if (reportFormat.equalsIgnoreCase("excel")) {
            JRXlsxExporter exporter = new JRXlsxExporter();
            exporter.setExporterInput(new SimpleExporterInput(jasperPrint));
            exporter.setExporterOutput(new SimpleOutputStreamExporterOutput(path + "\\employees.xlsx"));
            exporter.exportReport();
        }
        return "report generated in path : ";
    }


    public void updateResetPasswordToken(String token, String email) throws Exception {
        Employee customer = empRepository.findByEmail(email);
        
        if (customer != null) {
            customer.setResetPasswordToken(token);
            empRepository.save(customer);
        } else {
            throw new Exception("Could not find any customer with the email " + email);
        }
    }
     
    public Employee getByResetPasswordToken(String token) {
        return empRepository.findByResetPasswordToken(token);
    }
     
    public void updatePassword(Employee customer, String newPassword) {
        //BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    	 BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
        String encodedPassword = encoder.encode(newPassword);
        customer.setPassword(encodedPassword);
         
        customer.setResetPasswordToken(null);
        empRepository.save(customer);
    }
    @Transactional
    public void increaseFailedAttempt(Employee emp) {
    	int newFailedAttempts=emp.getFailedAttempt()+1;
    	empRepository.updateFailedAttempt(newFailedAttempts, emp.getEmail());
    }
	@Transactional
	public void lock(Employee emp) {
		emp.setAccountNonLocked(false);
		emp.setLockTime(new Date());
		 empRepository.save(emp);
		
	}
	@Transactional
	public boolean unlock(Employee emp) {
		long lockTimeInMillis =emp.getLockTime().getTime();
		long currentTimeInMillis =System.currentTimeMillis();
		
		if(lockTimeInMillis +LOCK_TIME_DURATION < currentTimeInMillis) {
			emp.setAccountNonLocked(true);
			emp.setLockTime(null);
			emp.setFailedAttempt(0);
			empRepository.save(emp);
			return true;
		}
		return false;
	}
	
	@Transactional
	public boolean unlock1(String user) {
		System.out.println("service"+user);
		Employee emp=empRepository.findByEmail(user);
		
			emp.setAccountNonLocked(true);
			emp.setLockTime(null);
			emp.setFailedAttempt(0);
			empRepository.save(emp);
			return true;
		
		
	}
}


    
    

