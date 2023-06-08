package com.exercise.controller;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.YearMonth;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.mail.util.ByteArrayDataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.Employee;
import com.exercise.model.Image;
import com.exercise.repo.DateRegisterRepository;
import com.exercise.repo.DoorlogRepository;
import com.exercise.repo.PriceInfoRepository;
import com.exercise.service.ImageService;

import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;


@Component
public class EmailSchedular {
	 @Autowired
	 private ImageService service;
	@Autowired
	private Configuration config;
	 @Autowired
	 private EmployeeRepository userRepo;
	 @Autowired
	 private DateRegisterRepository drRepo;
	 @Autowired
	 private JavaMailSender emailSender;
	 @Autowired
	 private DoorlogRepository doorlogRepo;
	 @Autowired
	 private PriceInfoRepository priceinfoRepo;
//	    public EmailScheduler(JavaMailSender emailSender) {
//	        this.emailSender = emailSender;
//	    }

	    //@Scheduled(cron = "0 0 9 ? * 2L", zone = "Asia/Yangon")
	    //<minute> <hour> <day-of-month> <month> <day-of-week> <command>
	    public void sendEmail(String email,Map<String, Object> model,String doorlog) throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	
    	

	    	
	    	MimeMessage message = emailSender.createMimeMessage();     
	    	MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
					StandardCharsets.UTF_8.name());
	        //helper.addAttachment("card.png", new ClassPathResource("src/main/resources/static/images/card.png")); 
	    	Image image =  service.getLatestImage();
	    	 // Replace with the appropriate image ID
	        byte[] imageData = image.getContent();
	        ByteArrayDataSource dataSource = new ByteArrayDataSource(imageData, "image/jpeg"); // Adjust the content type if needed
	        helper.addAttachment("image.jpg", dataSource);
	        
	        Template t = config.getTemplate("email-template.ftl");
			String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
			String subject = "Weekly update For Your Lunch!";
			
			
	        helper.setFrom("contact@CSMIT.com", "CSMIT Service");
	        helper.setTo(email);
	        helper.setText(html, true);
	        helper.setSubject(subject);
	  
	         
	        emailSender.send(message);
	        
	    }
	    
	    public void sendEmail2(String email,Map<String, Object> model,String doorlog) throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	
	    	MimeMessage message = emailSender.createMimeMessage();     
	    	MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
					StandardCharsets.UTF_8.name());
	        //helper.addAttachment("card.png", new ClassPathResource("src/main/resources/static/images/card.png")); 
	    	Image image =  service.getLatestImage();
	    	 // Replace with the appropriate image ID
	        byte[] imageData = image.getContent();
	        ByteArrayDataSource dataSource = new ByteArrayDataSource(imageData, "image/jpeg"); // Adjust the content type if needed
	        helper.addAttachment("image.jpg", dataSource);
	        
	        Template t = config.getTemplate("email-template2.ftl");
			String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
			String subject = "Weekly update For Your Lunch!";
			
			
	        helper.setFrom("contact@CSMIT.com", "CSMIT Service");
	        helper.setTo(email);
	        helper.setText(html, true);
	        helper.setSubject(subject);
	  
	         
	        emailSender.send(message);
	        
	    }
	    
	    
	    @Scheduled(cron = "#{@cronExpressionParser.parse()}",zone = "Asia/Yangon")
	    public void scheduleEmailSending() throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	    	
	    
		 List<Employee> email = userRepo.getREG();
		 System.out.print(email);
	        for (Employee e:email) {
	        	Map<String,String> map = new HashMap<>();
	        	List<String> weekdays = new ArrayList<>();
		    	List<String> weelyDate = selectDate(e.getDoorLogNo());
		    	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-M-d");
		    	for (String dateStr : weelyDate) {
		            LocalDate date = LocalDate.parse(dateStr, formatter);
		            DayOfWeek dayOfWeek = date.getDayOfWeek();
		            weekdays.add(dayOfWeek.toString());
		            map.put(dateStr,dayOfWeek.toString());
		        }
		    	Map<String, Object> model = new HashMap<>();
				model.put("days", weekdays);
				model.put("dates", weelyDate);
				model.put("map", map);
				if(map == null || map.isEmpty())
				{
					sendEmail2(e.getEmail(),model,e.getDoorLogNo());  
				}
	        	sendEmail(e.getEmail(),model,e.getDoorLogNo());   
	        }
	    }
	    public List<String> selectDate(String doorlog)
	    {
	    	
	    	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	    	LocalDate currentDate = LocalDate.now();
	        LocalDate startDate = currentDate.with(DayOfWeek.MONDAY);
	        LocalDate endDate = currentDate.with(DayOfWeek.SUNDAY);
	        String start = startDate.format(formatter);
	        String end = endDate.format(formatter);
	    	List<String> dates = drRepo.findDateByDoorLogNo(doorlog);
	    	List<String> weekly = new ArrayList<>();
	    	for( String d : dates )
	    	{
	    		if (start.compareTo(d) <= 0 && end.compareTo(d) >= 0) {
	    		    // code block to execute if condition is true
	    			weekly.add(d);
	    			
	    		}
	    	}
	    	return weekly;
	    }
	  
	    public void sendMonthEmail(String email,Map<String, Object> model,String doorlog) throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	    	
	    	MimeMessage message = emailSender.createMimeMessage();     
	    	MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
					StandardCharsets.UTF_8.name());
	        //helper.addAttachment("card.png", new ClassPathResource("src/main/resources/static/images/card.png")); 
	    	
	        
	        Template t = config.getTemplate("email-month.ftl");
			String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
			String subject = "Monthly Reminder For your Lunch";
			
			
	        helper.setFrom("contact@CSMIT.com", "CSMIT Service");
	        helper.setTo(email);
	        helper.setText(html, true);
	        helper.setSubject(subject);
	  
	         
	        emailSender.send(message);
	        
	    }
	    
	    public void sendMonthEmail2(String email,Map<String, Object> model,String doorlog) throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	    	
	    	MimeMessage message = emailSender.createMimeMessage();     
	    	MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
					StandardCharsets.UTF_8.name());
	        //helper.addAttachment("card.png", new ClassPathResource("src/main/resources/static/images/card.png")); 
	    	
	        
	        Template t = config.getTemplate("email-month2.ftl");
			String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
			String subject = "Monthly Reminder For your Lunch";
			
			
	        helper.setFrom("contact@CSMIT.com", "CSMIT Service");
	        helper.setTo(email);
	        helper.setText(html, true);
	        helper.setSubject(subject);
	  
	         
	        emailSender.send(message);
	        
	    }
	    
	    @Scheduled(cron = "0 0 9 ? * 2L", zone = "Asia/Yangon")
	    public void scheduleMonthEmailSending() throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	    	
	    	 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		      LocalDate now = LocalDate.now();
		      int year = now.getYear();
		        int month = now.getMonthValue();
		        YearMonth yearMonth = YearMonth.of(year, month);
		        LocalDate startDate = yearMonth.atDay(1);
		        LocalDate endDate = yearMonth.atEndOfMonth();
		        String startDateStr = startDate.format(formatter);
		      String endDateStr = endDate.format(formatter);
		 List<Employee> email = userRepo.getREG();
		 System.out.print(email);
	        for (Employee e:email) {
	        	 String doorlogno=e.getDoorLogNo();
	 	        String maxDoorlogDate=doorlogRepo.findMaxDoorLogTimeOfCurrentMonth();
	 	        List<Object> matchingDates=doorlogRepo.findMatchingDates(doorlogno, startDateStr, endDateStr);
	 	        List<Object> missingDates=doorlogRepo.findMissingDates(doorlogno, startDateStr, endDateStr);
	 	        List<Object> missingDatesReg=doorlogRepo.findMissingDatesFromReg(doorlogno, startDateStr, maxDoorlogDate);
	 	        Integer totalEmpdate =matchingDates.size()+missingDates.size()+missingDatesReg.size();
	 	        Integer totalMonthlyEmpCost =totalEmpdate*priceinfoRepo.getEmployeePrice();
		    	
	 	        Map<String, Object> model = new HashMap<>();
	 	        model.put("re", matchingDates.size());
	 	       model.put("rne", missingDates.size());
	 	      model.put("ue", missingDatesReg.size());
	 	      model.put("doorlog", e.getDoorLogNo());
	 	        model.put("start",startDateStr );
	 	       model.put("end",endDateStr );
	 	      model.put("dates", totalEmpdate);
	 	     model.put("cost", totalMonthlyEmpCost);
	 	     model.put("name", e.getName());
	 	    if(model.get("dates").equals(null) || totalEmpdate == 0 ) {
	        	sendMonthEmail2(e.getEmail(),model,e.getDoorLogNo()); 
	 	    }else
	 	   sendMonthEmail(e.getEmail(),model,e.getDoorLogNo());
	        }
	       
	    }
	    
	    public void sendOrderEmail(String email,Map<String, Object> model) throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	    	
	    	MimeMessage message = emailSender.createMimeMessage();     
	    	MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
					StandardCharsets.UTF_8.name());
	        //helper.addAttachment("card.png", new ClassPathResource("src/main/resources/static/images/card.png")); 
	    	
	        
	        Template t = config.getTemplate("remindOrder.ftl");
			String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
			String subject = "Remind Alert For Order";
			
			
	        helper.setFrom("contact@CSMIT.com", "CSMIT Service");
	        helper.setTo(email);
	        helper.setText(html, true);
	        helper.setSubject(subject);
	  
	         
	        emailSender.send(message);
	        
	    }
	    
	    public void sendCloseOrderEmail(String email,Map<String, Object> model) throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	    	
	    	MimeMessage message = emailSender.createMimeMessage();     
	    	MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
					StandardCharsets.UTF_8.name());
	        //helper.addAttachment("card.png", new ClassPathResource("src/main/resources/static/images/card.png")); 
	    	
	        
	        Template t = config.getTemplate("remindClose.ftl");
			String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
			String subject = "Remind Alert For Order";
			
			
	        helper.setFrom("contact@CSMIT.com", "CSMIT Service");
	        helper.setTo(email);
	        helper.setText(html, true);
	        helper.setSubject(subject);
	  
	         
	        emailSender.send(message);
	        
	    }
	    
	    @Scheduled(cron = "0 00 14 ? * FRI", zone = "Asia/Yangon")
	    public void scheduleOrderEmailSending() throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	    	
	    
		 List<Employee> employees = userRepo.findAllAdminEmployees();
		
	        for (Employee e: employees) {
	        	 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	        	 LocalDate currentDate = LocalDate.now();
	        	String Current = currentDate.format(formatter);
		    	
		    	Map<String, Object> model = new HashMap<>();
				model.put("name", e.getName());
				model.put("email", e.getEmail());
				model.put("current", Current);
				
	        	sendOrderEmail(e.getEmail(),model);   
	        }
	    }
	    
	    @Scheduled(cron = "0 30 17 ? * FRI", zone = "Asia/Yangon")
	    public void scheduleCloseEmailSending() throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	    	
		    
			 List<Employee> employees = userRepo.findAllAdminEmployees();
			
		        for (Employee e: employees) {
		        	 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		        	 LocalDate currentDate = LocalDate.now();
		        	String Current = currentDate.format(formatter);
			    	
			    	Map<String, Object> model = new HashMap<>();
					model.put("name", e.getName());
					model.put("email", e.getEmail());
					model.put("current", Current);
					
		        	sendCloseOrderEmail(e.getEmail(),model);   
		        }
		    }
	    
public void sendUpdateEmail(String email,Map<String, Object> model) throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	    	
	    	MimeMessage message = emailSender.createMimeMessage();     
	    	MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
					StandardCharsets.UTF_8.name());
	        //helper.addAttachment("card.png", new ClassPathResource("src/main/resources/static/images/card.png")); 
	    	
	        
	        Template t = config.getTemplate("emailUpdate.ftl");
			String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
			String subject = "Update your Lunch";
			
			
	        helper.setFrom("contact@CSMIT.com", "CSMIT Service");
	        helper.setTo(email);
	        helper.setText(html, true);
	        helper.setSubject(subject);
	  
	         
	        emailSender.send(message);
	        
	    }
	    
	    @Scheduled(cron = "0 27 22 ? * TUE", zone = "Asia/Yangon")
	    public void scheduleUpdateEmailSending() throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
	    	
	    
		 List<Employee> email = userRepo.getREG();
		 System.out.print(email);
	        for (Employee e:email) {
	        	
	        	
		    	Map<String, Object> model = new HashMap<>();
				model.put("name", e.getName());
				
				
	        	sendUpdateEmail(e.getEmail(),model);   
	        }
	    }
	   
	}