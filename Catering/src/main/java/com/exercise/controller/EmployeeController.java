package com.exercise.controller;

import java.awt.image.BufferedImage;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.Principal;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.time.temporal.TemporalAccessor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Optional;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dao.lunchViewRepository;
import com.exercise.dto.Employee;
import com.exercise.dto.OrderDTO;
import com.exercise.dto.Voucher;
import com.exercise.dto.Vouchers;
import com.exercise.dto.WeeklyVoucher;
import com.exercise.model.AvoidMeat;
import com.exercise.model.AvoidMeatResponse;
import com.exercise.model.ChangePasswordForm;
import com.exercise.model.Restaurant;
import com.exercise.model.contact;
import com.exercise.model.lunchView;
import com.exercise.model.mailSetting;
import com.exercise.model.Order;
import com.exercise.model.PriceInfo;
import com.exercise.model.RegisterResponse;
import com.exercise.repo.ContactRepository;
import com.exercise.repo.HolidayRepository;
import com.exercise.repo.MailRepository;
import com.exercise.repo.PriceInfoRepository;
import com.exercise.repo.RestaurantRepository;
import com.exercise.repo.VoucherRepository;
import com.exercise.repo.WeeklyVoucherRepository;
import com.exercise.service.AvoidMeatService;
import com.exercise.service.EmployeeService;
import com.exercise.service.ExcelService;
import com.exercise.service.OrderService;
import com.exercise.service.RegisterService;
import com.exercise.service.VoucherService;
import com.exercise.service.WeeklyVoucherService;

import net.sf.jasperreports.engine.JRException;




@Controller
public class EmployeeController {
	@Autowired
	lunchViewRepository lvRepo;
	@Autowired
	ContactRepository cRepo;
	@Autowired
	MailRepository mRepo;
	@Autowired
	RestaurantRepository resRepo;
	@Autowired
    private EmployeeRepository employeeRepository;
	@Autowired
	RegisterService regService;
	@Autowired
	AvoidMeatService AvoidService;
	@Autowired
	OrderService orderService;
	@Autowired
	VoucherService voucherService;
	@Autowired
	  ExcelService fileService;
	@Autowired
	HolidayRepository holiRepo;
	@Autowired
	VoucherRepository  VouRepository;
	@Autowired
	WeeklyVoucherService  weeklyService;
	@Autowired
	WeeklyVoucherRepository weekRepo;
	@Autowired
	EmployeeService empService;
	@Autowired
	PriceInfoRepository pRepo;
	@Autowired
	RestaurantRepository Resrepo;
	@Autowired
	PriceInfoRepository price;
	
	
	@PostMapping("/deleteEmployee")
	  public String deleteEmployee(@RequestParam("staffId") String staffId,RedirectAttributes redirectAttributes,Principal principal,Model model) {
	 	Employee emp=employeeRepository.findByStaffId(staffId);
	 	if(!emp.equals("")|| emp!=null) {
	 		emp.setStatus("Inactive");
	 		employeeRepository.save(emp);
	 		redirectAttributes.addFlashAttribute("infoMessage", "Successfully deleted!");
	 	}
	 	if(emp.equals("")|| emp==null) {
	 		redirectAttributes.addFlashAttribute("infoMessage", "Can not find data!");
	 	}
	 	
	 	 return "redirect:/employees";

	  }
	@GetMapping("/editEmployee/{id}")
	public String showUpdateForm(@PathVariable("id") String id, Model model,HttpSession session) {
	    Employee emp = employeeRepository.findByStaffId(id);
	    String doorlog=emp.getDoorLogNo();
	    session.setAttribute("roleCheck", emp.getRole());
	    
	    model.addAttribute("emp", emp);
	    return "update-employee";
	}
	@PostMapping("/updateEmployee")
	public String updateUser(@ModelAttribute Employee emp, 
	  BindingResult result, Model model,RedirectAttributes rt) {
		Employee employee = employeeRepository.findByStaffId(emp.getStaffId());
		employee.setName(emp.getName());
		employee.setEmail(emp.getEmail());
		employee.setStaffId(emp.getStaffId());
		employee.setDoorLogNo(emp.getDoorLogNo());
		employee.setRole(emp.getRole());
		employee.setDepartment(emp.getDepartment());
	    if (result.hasErrors()) {
	        emp.setStaffId(emp.getStaffId());
	        return "update-employee";
	        
	        
	    }
	        
	    employeeRepository.save(employee);
        rt.addFlashAttribute("success", "Successfully Updated !!!");

	    return "redirect:/employees";
	}
	
	@GetMapping("/EmployeeReport")
	 public String employeeReport(Model m,HttpSession session) {
	  try{
		  empService.employeeReport();
	  }catch (Exception e){
	System.out.println(e.getMessage()) ; }
	  m.addAttribute("msg","Jasper Reported Successfully");

	  return "employees";

	 }
	@GetMapping("/report/{format}")
	public String generateReport(@PathVariable String format) throws FileNotFoundException, JRException {
		return empService.exportReport(format);
	}
	@GetMapping("/employees")
    public String getAllEmployee(Model model) {
        List<Employee> employees = employeeRepository.findAllExceptDoorlogno();
        model.addAttribute("employees", employees);
        return "testemployee";
    }
	
	@GetMapping("/addVoucher")
    public ModelAndView displayVoucher(Model model) {
		List<Vouchers> list= VouRepository.findByWeeklyVoucher("false");
		model.addAttribute("vouchers",list);
		
		List<Employee> emp=employeeRepository.findByRole("ADMIN");
		model.addAttribute("emp", emp);
        return  new ModelAndView("CreateVoucher", "voucher", new Vouchers());
    }
	@GetMapping("/cancelOrder")
    public String cancelorder(Model model,@RequestParam("ID") int voucherID) {
		VouRepository.deleteById(voucherID);
		orderService.DeleteVoucherID(voucherID);
        return "redirect:order";
    }
	
	@PostMapping("/UpdateVoucher")
    public String UpdateVoucher(RedirectAttributes redirectAttributes,@ModelAttribute("voucher") Vouchers voucher,Model model) {
		
		
		if(voucher.getApproved()=="") {
			redirectAttributes.addFlashAttribute("message2", "Please Select approved");
			return "redirect:order";
		}else {
		if(voucher.getCashier()=="") {
			redirectAttributes.addFlashAttribute("message2", "Please Select cashier");
			return "redirect:order";
		}
		else{
			voucher.setWeeklyVoucher("true");
			voucher.setStatus("Unpaid");
			
			voucherService.updateVoucher(voucher);
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			LocalDate now = LocalDate.now();
			String today = dtf.format(now);
			
		
			List<OrderDTO> order=orderService.findByVoucherId(voucher.getId());
			model.addAttribute("order", order);
			Vouchers voucher1=VouRepository.findById(voucher.getId());
			model.addAttribute("voucher1", voucher1);
			int total=0;
			int pax=0;
			int date=0;
			int price=0;
			String startDate=null;
			String endDate=null;
			for(OrderDTO A:order) {
				total=total+A.getAmount();
				pax=pax+A.getPeople();
				price=A.getPrice();
				if(date==0) {
					startDate=A.getDate();
					}date++;
				endDate=A.getDate();
			}
			model.addAttribute("totalAmount",total);
			model.addAttribute("today", today);
			
		WeeklyVoucher week=new WeeklyVoucher();
		week.setId(voucher1.getId());
		week.setApproved(voucher1.getApproved());
		week.setCashier(voucher1.getCashier());
		week.setDescription(startDate+"~"+endDate);
		week.setNoOfPax(pax);
		week.setPaymentDate(today);
		week.setPrice(price);
		week.setReceived(voucher1.getReceived());
		week.setStatus(voucher1.getStatus());
		week.setTotalAmount(total);
		week.setStartDate(startDate);
		
		 weeklyService.Save(week);
		 redirectAttributes.addFlashAttribute("message", "Order Successfully For this week.Wait for next order");
			
		
        return "redirect:order";
		}
		}
    }
	
	
	@GetMapping("/viewVoucher")
    public String viewVoucher(Model model,@RequestParam(value="week", required=false, defaultValue= "0") String week) {
		int weeks=Integer.valueOf(week);
		if(weeks==0) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate now = LocalDate.now();
		String today = dtf.format(now);
	
		int id=voucherService.getCount();
		List<OrderDTO> order=orderService.findByVoucherId(id);
		model.addAttribute("order", order);
		Vouchers voucher1=VouRepository.findById(id);
		model.addAttribute("voucher1", voucher1);
		int total=0;
		for(OrderDTO A:order) {
			total=total+A.getAmount();
		}
		model.addAttribute("totalAmount",total);
		model.addAttribute("today", today);
		List<WeeklyVoucher> select=weekRepo.findAll();
		model.addAttribute("select", select);
		WeeklyVoucher wVoucher=weekRepo.findById(voucher1.getId());
		model.addAttribute("wVoucher", wVoucher);
		if(id<=99) {
			if(id<=9) {
				model.addAttribute("Wid","CS"+"00"+id);
				
			}else {
			
				model.addAttribute("Wid","CS"+"0"+id);
			
		}
		}
		else {
			model.addAttribute("Wid","CS"+id);
		
		}
		}
		
		
		else {
			
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			LocalDate now = LocalDate.now();
			String today = dtf.format(now);
			
			
			List<OrderDTO> order=orderService.findByVoucherId(weeks);
			model.addAttribute("order", order);
			Vouchers voucher1=VouRepository.findById(weeks);
			model.addAttribute("voucher1", voucher1);
			int total=0;
			for(OrderDTO A:order) {
				total=total+A.getAmount();
			}
			model.addAttribute("totalAmount",total);
			model.addAttribute("today", today);
			List<WeeklyVoucher> select=weekRepo.findAll();
			model.addAttribute("select", select);
			WeeklyVoucher wVoucher=weekRepo.findById(weeks);
			model.addAttribute("wVoucher", wVoucher);
			if(weeks<=99) {
				if(weeks<=9) {
					model.addAttribute("Wid","CS"+"00"+weeks);
					
				}else {
				
					model.addAttribute("Wid","CS"+"0"+weeks);
				
			}
			}
			else {
				model.addAttribute("Wid","CS"+weeks);
			
			}
	
			
		}
		List<Employee> emp=employeeRepository.findBydepartment("HR/Admin Dept");
		model.addAttribute("emp", emp);
		Optional<Restaurant> rs=Resrepo.findById(1);
		if (rs.isPresent()) {
			Restaurant res = rs.get();
			model.addAttribute("ResName", res.getName());
			model.addAttribute("Phone", res.getPhone());
		}
		
        return "paymentvoucher" ;
    }
	
	
	@GetMapping("/voucher")
    public String Voucher(Model model,@RequestParam(value="week", required=false, defaultValue= "0") String week) {
		int weeks=Integer.valueOf(week);
	
			
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			LocalDate now = LocalDate.now();
			String today = dtf.format(now);
			
			
			List<OrderDTO> order=orderService.findByVoucherId(weeks);
			model.addAttribute("order", order);
			Vouchers voucher1=VouRepository.findById(weeks);
			model.addAttribute("voucher1", voucher1);
			int total=0;
			for(OrderDTO A:order) {
				total=total+A.getAmount();
			}
			model.addAttribute("totalAmount",total);
			model.addAttribute("today", today);
			List<WeeklyVoucher> select=weekRepo.findAll();
			model.addAttribute("select", select);
			WeeklyVoucher wVoucher=weekRepo.findById(weeks);
			model.addAttribute("wVoucher", wVoucher);
	
			if(weeks<=99) {
				if(weeks<=9) {
					model.addAttribute("Wid","CS"+"00"+weeks);
					
				}else {
				
					model.addAttribute("Wid","CS"+"0"+weeks);
				
			}
			}
			else {
				model.addAttribute("Wid","CS"+weeks);
			
			}
	
		
			List<Employee> emp=employeeRepository.findBydepartment("HR/Admin Dept");
			model.addAttribute("emp", emp);
			Restaurant rs=Resrepo.getRestaurant();
			model.addAttribute("ResName", rs.getName());
			model.addAttribute("Phone", rs.getPhone());
		
		List<WeeklyVoucher> list=weekRepo.findByStatus(voucher1.getStatus());
		model.addAttribute("page", list);
       
        return "VoucherPage" ;
    }
	
	
	@GetMapping("/paid")
    public String paid(Model model,@RequestParam(value="week", required=false, defaultValue= "0") String week,@RequestParam("ID") int paid) {
		int weeks=Integer.valueOf(week);
		if(weeks==0) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate now = LocalDate.now();
		String today = dtf.format(now);
	
		
		List<OrderDTO> order=orderService.findByVoucherId(paid);
		model.addAttribute("order", order);
		Vouchers voucher1=VouRepository.findById(paid);
		model.addAttribute("voucher1", voucher1);
		int total=0;
		for(OrderDTO A:order) {
			total=total+A.getAmount();
		}
		model.addAttribute("totalAmount",total);
		model.addAttribute("today", today);
		List<WeeklyVoucher> select=weekRepo.findAll();
		model.addAttribute("select", select);
		WeeklyVoucher wVoucher=weekRepo.findById(voucher1.getId());
		model.addAttribute("wVoucher", wVoucher);
		
		
		}
		else {
			
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			LocalDate now = LocalDate.now();
			String today = dtf.format(now);
			
			
			List<OrderDTO> order=orderService.findByVoucherId(weeks);
			model.addAttribute("order", order);
			Vouchers voucher1=VouRepository.findById(weeks);
			model.addAttribute("voucher1", voucher1);
			int total=0;
			for(OrderDTO A:order) {
				total=total+A.getAmount();
			}
			model.addAttribute("totalAmount",total);
			model.addAttribute("today", today);
			List<WeeklyVoucher> select=weekRepo.findAll();
			model.addAttribute("select", select);
			WeeklyVoucher wVoucher=weekRepo.findById(weeks);
			model.addAttribute("wVoucher", wVoucher);
			
			
		}
		List<Employee> emp=employeeRepository.findBydepartment("HR/Admin Dept");
		model.addAttribute("emp", emp);
		
		Optional<Restaurant> rs=Resrepo.findById(1);
		if (rs.isPresent()) {
			Restaurant res = rs.get();
			model.addAttribute("ResName", res.getName());
			model.addAttribute("Phone", res.getPhone());
		}
        return "paymentvoucher" ;
    }
	
	
	
	
	@PostMapping("/paymentVoucher")
    public String paymentVoucher(RedirectAttributes redirectAttributes,@RequestParam("payment") String payment,@RequestParam("voucherID") int voucherID,Model model,@RequestParam(value="voucherPage", required=false, defaultValue= "0") String page,@RequestParam("cashier") String cashier,@RequestParam("approved") String approved) {
		if(cashier=="") {
			if(page.equals("Unpaid")) {
				System.out.println("kookoo"+page);
			 redirectAttributes.addAttribute("week", voucherID);
			 redirectAttributes.addFlashAttribute("message2","Please!! Select cashier" );
				System.out.println("AA");
				return "redirect:voucher";
				 
			}else {
				redirectAttributes.addFlashAttribute("message2","Please!! Select cashier" );
				System.out.println("BB");
				return "redirect:viewVoucher" ;
	        
			}
		}else if(approved=="") {
			if(page.equals("Unpaid")) {
				System.out.println("kookoo"+page);
			 redirectAttributes.addAttribute("week", voucherID);
			 redirectAttributes.addFlashAttribute("message2","Please!! Select approved" );
			 System.out.println("CC");
				
				return "redirect:voucher";
				 
			}else {
				redirectAttributes.addFlashAttribute("message2","Please!! Select approved" );
				System.out.println("DD");
				return "redirect:viewVoucher" ;
	        
			}
			
		}
		
		else {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate now = LocalDate.now();
		String today = dtf.format(now);
		
		Vouchers voucher1=VouRepository.findById(voucherID);
		
				
		List<OrderDTO> order=orderService.findByVoucherId(voucherID);
		model.addAttribute("order", order);
		model.addAttribute("voucher1", voucher1);
		int total=0;
		int date=0;
		String startDate=null;
		for(OrderDTO A:order) {
			total=total+A.getAmount();
			if(date==0) {
				startDate=A.getDate();
			}
		}
		model.addAttribute("totalAmount",total);
		model.addAttribute("today", today);
		voucher1.setApproved(approved);
		voucher1.setStatus("Paid");
		voucher1.setCashier(cashier);
		voucherService.updateVoucher(voucher1);
		
		WeeklyVoucher weekVoucher=weekRepo.findById(voucherID);
		weekVoucher.setStatus("Paid");
		weekVoucher.setApproved(approved);
		weekVoucher.setCashier(cashier);
		weekVoucher.setPaymentMethod(payment);
		weekVoucher.setPaymentDate(today);
		
		weeklyService.updateWeeklyVoucher(weekVoucher);
		
		Optional<Restaurant> rs=Resrepo.findById(1);
		if (rs.isPresent()) {
			Restaurant res = rs.get();
			model.addAttribute("ResName", res.getName());
			model.addAttribute("Phone", res.getPhone());
		}
		System.out.println("nfjbsd"+page);
		if(page.equals("Unpaid")) {
			redirectAttributes.addFlashAttribute("success","Thank You" );
			
			System.out.println("kookoo"+page);
			return "redirect:/unpaidPage";
			 
		}else {
			redirectAttributes.addFlashAttribute("success","Thank You" );
			
			return "redirect:viewVoucher" ;
        
		}
		}
    }
	
	

	
	
	@GetMapping("/selectOrder")
	public ModelAndView selectOrder(Model model,HttpSession session,@RequestParam(value="selectDate", required=false) String selectDate) {
		String[] dates = selectDate.split(" - ");
        String startDate = dates[0];
        String endDate = dates[1];
        String[] parts = startDate.split("/");
        String sformattedDate =parts[2]+"-"+parts[0]+"-"+parts[1];
        String[] parts1 = endDate.split("/");
        String eformattedDate = parts1[2]+"-"+parts1[0]+"-"+parts1[1];
        System.out.println("month"+sformattedDate+"ldnf"+eformattedDate);
        
        System.out.println(selectDate);
		 int amount=0;
		    List<RegisterResponse> count=regService.findByRegisterCount5(sformattedDate ,eformattedDate );
		    for(RegisterResponse A:count) {
		    	OrderDTO list=orderService.findByDate(A.getDate());
				if(list!=null) {
					int id=voucherService.getCount();
					List<OrderDTO> orderlist=orderService.findByVoucherId(id);
					int totalAmount=0;
					int count3=0;
					for(OrderDTO or:orderlist) {
						totalAmount=totalAmount+or.getAmount();
						count3++;
					} 
					List<Employee> emp=employeeRepository.findByRole("ADMIN");
					model.addAttribute("emp", emp);
					Vouchers vou= VouRepository.findById(id);
					model.addAttribute("Vcashier", vou.getCashier());
					System.out.println(vou.getCashier()+"cashier");
					model.addAttribute("totalAmount", totalAmount);
					model.addAttribute("count3", count3);
					model.addAttribute("voucherID", id);
					model.addAttribute("orderlist", orderlist);
					Optional<Restaurant> rs=Resrepo.findById(1);
					if (rs.isPresent()) {
						Restaurant res = rs.get();
						model.addAttribute("ReceivedName", res.getPaymentReceiveName());
						
					}
					return new ModelAndView("orderShow","voucher", new Vouchers());
				}
				
				
		    	if(amount==0) {
		    		List<AvoidMeatResponse> avoidCount=regService.findByAvoidCount(A.getDate());
		    		
					model.addAttribute("avoid",avoidCount);
				
		    	model.addAttribute("date", A.getDate());
				model.addAttribute("count", A.getCount());
				System.out.println(A.getDate()+"datepp");
				System.out.println(A.getCount()+"aa");
				
		    	}
		    	if(amount==1) {
			    	model.addAttribute("date1", A.getDate1());
					model.addAttribute("count1", A.getCount1());
			    	}
		    	if(amount==2) {
			    	model.addAttribute("date2", A.getDate2());
					model.addAttribute("count2", A.getCount2());
			    	}
		    	if(amount==3) {
			    	model.addAttribute("date3", A.getDate3());
					model.addAttribute("count3", A.getCount3());
			    	}
		    	if(amount==4) {
			    	model.addAttribute("date4", A.getDate4());
					model.addAttribute("count4", A.getCount4());
			    	}
		    	System.out.println(amount+"amountaa");
		    	amount++;
		    }System.out.println(amount+"amount");
		    System.out.println("Not Null");
		   
	 Optional<PriceInfo> priceInfo=pRepo.findById(1);
		if (priceInfo.isPresent()) {
		    PriceInfo priceInfoValue = priceInfo.get();
		  Double ResPrice=priceInfoValue.getRestaurantPrice();
		   int Rprice = ResPrice.intValue();
	
			model.addAttribute("price", Rprice);}
		model.addAttribute("select", selectDate);
		   
	
		return new ModelAndView("Order","order",new Order());
    }
	
	
	@GetMapping("/order")
	public ModelAndView orderLunch(Model model,HttpSession session) {
		
	
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate now = LocalDate.now();
		String today = dtf.format(now);
		Calendar calendar = Calendar.getInstance();
		   
		// Add one week to the current date
		calendar.add(Calendar.WEEK_OF_YEAR, 1);

		// Set the day of the week to Monday
		calendar.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);

		// Get the date for Monday of next week
		Date monday = calendar.getTime();

		calendar.set(Calendar.DAY_OF_WEEK, Calendar.TUESDAY);

		// Get the date for Monday of next week
		Date tuesday = calendar.getTime();
		
		calendar.set(Calendar.DAY_OF_WEEK, Calendar.WEDNESDAY);

		// Get the date for Monday of next week
		Date wednesday = calendar.getTime();
		
		calendar.set(Calendar.DAY_OF_WEEK, Calendar.THURSDAY);

		// Get the date for Monday of next week
		Date thursday = calendar.getTime();

		// Set the day of the week to Friday
		calendar.set(Calendar.DAY_OF_WEEK, Calendar.FRIDAY);

		// Get the date for Friday of next week
		Date friday = calendar.getTime();
		    
		    // Format the dates as "yyyy-MM-dd" strings
		    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		    String nextMondayString = dateFormat.format(monday);
		    String nextFridayString = dateFormat.format(friday);
		    
		    calendar.add(Calendar.WEEK_OF_YEAR, 1);

			// Set the day of the week to Monday
			calendar.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);

			// Get the date for Monday of next week
			Date monday2 = calendar.getTime();
			
			calendar.set(Calendar.DAY_OF_WEEK, Calendar.FRIDAY);

			// Get the date for Friday of next week
			Date friday2 = calendar.getTime();

			 String TwonextMondayString = dateFormat.format(monday2);
			    String TwonextFridayString = dateFormat.format(friday2);
			    
			    	System.out.println("konv"+TwonextMondayString);
			    	System.out.println("kmf"+TwonextFridayString);
			    	System.out.println("fmg"+nextMondayString);
			    	
			    	LocalDateTime now1 = LocalDateTime.now();
			        DayOfWeek currentDayOfWeek = now1.getDayOfWeek(); // Get the current day of the week
			        int currentHour = now1.getHour(); // Get the current hour in 24-hour format (0-23)

			      
		    
		   
		   if(currentDayOfWeek == DayOfWeek.FRIDAY && currentHour >= 14) {
			   if(currentDayOfWeek == DayOfWeek.FRIDAY && currentHour >= 17) {
					model.addAttribute("hour", "1");
					}
			   if(currentDayOfWeek == DayOfWeek.FRIDAY && currentHour >= 18){
				   int id=voucherService.getCount();
				   System.out.println("kjdkfkodkif");
				   if(id==0) {
					   
					   
					System.out.println("jjjkkkll");
						model.addAttribute("errorMessage3", "Order Successfully For this week.Wait for next order");
						model.addAttribute("Vcashier", "koko");
						System.out.println("ndjfnkoko");
						
						return new ModelAndView("orderShow","voucher", new Vouchers());
					   
					}else {
						
					List<OrderDTO> orderlist=orderService.findByVoucherId(id);
					
					int totalAmount=0;
					int count3=0;
					for(OrderDTO or:orderlist) {
						totalAmount=totalAmount+or.getAmount();
						count3++;
					} 
					List<Employee> emp=employeeRepository.findBydepartment("HR/Admin Dept");
					model.addAttribute("emp", emp);
					Vouchers vou= VouRepository.findById(id);
					
					model.addAttribute("Vcashier", vou.getCashier());

					
					model.addAttribute("Approved", vou.getApproved());
					if(vou.getCashier()!=null) {
						model.addAttribute("errorMessage3", "Order Successfully For this week.Wait for next order");
					}
					System.out.println(vou.getCashier()+"cashier");
					model.addAttribute("totalAmount", totalAmount);
					model.addAttribute("count3", count3);
					model.addAttribute("voucherID", id);
					model.addAttribute("orderlist", orderlist);
					Optional<Restaurant> rs=Resrepo.findById(1);
					if (rs.isPresent()) {
						Restaurant res = rs.get();
						model.addAttribute("ReceivedName", res.getPaymentReceiveName());
						
					}
				
					return new ModelAndView("orderShow","voucher", new Vouchers());
					}
			   }
			   int amount=0;
			    List<RegisterResponse> count=regService.findByRegisterCount5(nextMondayString, nextFridayString );
			    for(RegisterResponse A:count) {
			    	OrderDTO list=orderService.findByDate(A.getDate());
					if(list!=null) {
						int id=voucherService.getCount();
						List<OrderDTO> orderlist=orderService.findByVoucherId(id);
						int count3=0;
						int totalAmount=0;
						for(OrderDTO or:orderlist) {
							totalAmount=totalAmount+or.getAmount();
							count3++;
						} 
						List<Employee> emp=employeeRepository.findBydepartment("HR/Admin Dept");
						model.addAttribute("emp", emp);
						Vouchers vou= VouRepository.findById(id);
						model.addAttribute("Vcashier", vou.getCashier());

						model.addAttribute("Approved", vou.getApproved());
						model.addAttribute("totalAmount", totalAmount);
						model.addAttribute("count3", count3);
						model.addAttribute("voucherID", id);
						model.addAttribute("orderlist", orderlist);
						Optional<Restaurant> rs=Resrepo.findById(1);
						if (rs.isPresent()) {
							Restaurant res = rs.get();
							model.addAttribute("ReceivedName", res.getPaymentReceiveName());
							
						}
						return new ModelAndView("orderShow","voucher", new Vouchers());
					}
			    	if(amount==0) {
			    		List<AvoidMeatResponse> avoidCount=regService.findByAvoidCount(A.getDate());
			    		model.addAttribute("avoid",avoidCount);
					
			    	model.addAttribute("date", A.getDate());
					model.addAttribute("count", A.getCount());
					System.out.println(A.getDate()+"datepp");
					System.out.println(A.getCount()+"aa");
			    	}
			    	if(amount==1) {
			    		List<AvoidMeatResponse> avoidCount=regService.findByAvoidCount(A.getDate1());
			    		model.addAttribute("avoid1",avoidCount);
				    	model.addAttribute("date1", A.getDate1());
						model.addAttribute("count1", A.getCount1());
				    	}
			    	if(amount==2) {
			    		List<AvoidMeatResponse> avoidCount=regService.findByAvoidCount(A.getDate2());
			    		model.addAttribute("avoid2",avoidCount);
				    	model.addAttribute("date2", A.getDate2());
						model.addAttribute("count2", A.getCount2());
				    	}
			    	if(amount==3) {
			    		List<AvoidMeatResponse> avoidCount=regService.findByAvoidCount(A.getDate3());
			    		model.addAttribute("avoid3",avoidCount);
				    	model.addAttribute("date3", A.getDate3());
						model.addAttribute("count3", A.getCount3());
				    	}
			    	if(amount==4) {
			    		List<AvoidMeatResponse> avoidCount=regService.findByAvoidCount(A.getDate4());
			    		model.addAttribute("avoid4",avoidCount);
				    	model.addAttribute("date4", A.getDate4());
						model.addAttribute("count4", A.getCount4());
				    	}
			    	System.out.println(amount+"amountaa");
			    	amount++;
			    }System.out.println(amount+"amount");
			    
		System.out.println("nullZWE jfkdmfk");
		   
		   }else {
		       
			   
		   
			   		int id=voucherService.getCount();
			   		if(id==0) {
			   			model.addAttribute("Vcashier", "koko");
			   			model.addAttribute("errorMessage3", "Order Successfully For this week.Wait for next order");
						return new ModelAndView("orderShow","voucher", new Vouchers());
					}
					List<OrderDTO> orderlist=orderService.findByVoucherId(id);
					
					int totalAmount=0;
					int count3=0;
					for(OrderDTO or:orderlist) {
						totalAmount=totalAmount+or.getAmount();
						
						count3++;
					} 
					List<Employee> emp=employeeRepository.findBydepartment("HR/Admin Dept");
					model.addAttribute("emp", emp);
					Vouchers vou= VouRepository.findById(id);
					model.addAttribute("Approved", vou.getApproved());
					
					
					
					model.addAttribute("Vcashier", vou.getCashier());
					if(vou.getCashier()!=null) {
						model.addAttribute("errorMessage3", "Order Successfully For this week.Wait for next order");
						
					}
					System.out.println(vou.getCashier()+"cashier");
					model.addAttribute("totalAmount", totalAmount);
					model.addAttribute("count3", count3);
					model.addAttribute("voucherID", id);
					model.addAttribute("orderlist", orderlist);
					Optional<Restaurant> rs=Resrepo.findById(1);
					if (rs.isPresent()) {
						Restaurant res = rs.get();
						model.addAttribute("ReceivedName", res.getPaymentReceiveName());
						
					}
				
			
					return new ModelAndView("orderShow","voucher", new Vouchers());
				
		   }
		   Optional<PriceInfo> priceInfo=pRepo.findById(1);
			if (priceInfo.isPresent()) {
			    PriceInfo priceInfoValue = priceInfo.get();
			  Double ResPrice=priceInfoValue.getRestaurantPrice();
			   int Rprice = ResPrice.intValue();
		
				model.addAttribute("price", Rprice);
			}
			
				return new ModelAndView("Order","order",new Order());
    }
	@PostMapping("/orderAfter")
    public String orderAfter(@ModelAttribute("order") Order order,Model model,@RequestParam(value="select", required=false) String select,RedirectAttributes redirectAttributes) {
		int count=0;
		int id=voucherService.getCount();
		Vouchers voucher=new Vouchers();
		voucher.setId(id+1);
		voucher.setStatus("Unpaid");
		voucher.setWeeklyVoucher("false");
		
		Optional<PriceInfo> priceInfo=pRepo.findById(1);
		if (priceInfo.isPresent()) {
		    PriceInfo priceInfoValue = priceInfo.get();
		    String Resname = priceInfoValue.getRestaurantName();
		    Double ComPrice=priceInfoValue.getCompanyPrice();
		    Double EmpPrice=priceInfoValue.getEmployeePrice();
		    Double ResPrice=priceInfoValue.getRestaurantPrice();
		    int cprice = ComPrice.intValue();
		    int Eprice = EmpPrice.intValue();
		    int Rprice = ResPrice.intValue();
		
		
		voucherService.Save(voucher);
		System.out.println(id+"id");
		for(int A:order.getQuantity()) {
		
		if(count==0) {
		System.out.println(order.getDate());
		System.out.println(A+"Zwe");
		OrderDTO a=new OrderDTO();
		String avoid = Arrays.toString(order.getAvoid());
		a.setAvoid(avoid);
		a.setAmount(A* Rprice);
		a.setComAmount(A* cprice);
		
		a.setDate(order.getDate());
		a.setPeople(A);
		a.setPeopleAmount(A*Eprice);
		a.setPrice( Rprice);
		a.setVoucherId(id+1);
		OrderDTO O=orderService.Save(a);
		if(O==null) {
			model.addAttribute("notOrder", "Can't Order");
			return "order";
		}
		}
		
		if(count==1) {
			
			OrderDTO a=new OrderDTO();
			String avoid = Arrays.toString(order.getAvoid1());
			a.setAvoid(avoid);
			a.setAmount(A* Rprice);
			a.setComAmount(A*cprice);
			a.setDate(order.getDate1());
			a.setPeople(A);
			a.setPeopleAmount(A*Eprice);
			a.setPrice( Rprice);
			a.setVoucherId(id+1);
			OrderDTO O=orderService.Save(a);
			if(O==null) {
				model.addAttribute("notOrder", "Can't Order");
				return "order";
			}
			
			System.out.println(order.getDate1());
		}
		if(count==2) {
			OrderDTO a=new OrderDTO();
			String avoid = Arrays.toString(order.getAvoid2());
			a.setAvoid(avoid);
			a.setAmount(A* Rprice);
			a.setComAmount(A*cprice);
			a.setDate(order.getDate2());
			a.setPeople(A);
			a.setPeopleAmount(A*Eprice);
			a.setPrice( Rprice);
			a.setVoucherId(id+1);
			OrderDTO O=orderService.Save(a);
			if(O==null) {
				model.addAttribute("notOrder", "Can't Order");
				return "order";
			}
			System.out.println(order.getDate2());
		}if(count==3) {
			OrderDTO a=new OrderDTO();
			String avoid = Arrays.toString(order.getAvoid3());
			a.setAvoid(avoid);
			a.setAmount(A* Rprice);
			a.setComAmount(A*cprice);
			a.setDate(order.getDate3());
			a.setPeople(A);
			a.setPeopleAmount(A*Eprice);
			a.setPrice( Rprice);
			a.setVoucherId(id+1);
			OrderDTO O=orderService.Save(a);
			if(O==null) {
				model.addAttribute("notOrder", "Can't Order");
				return "order";
			}
			System.out.println(order.getDate3());
		}if(count==4) {
			OrderDTO a=new OrderDTO();
			String avoid = Arrays.toString(order.getAvoid4());
			a.setAvoid(avoid);
			a.setAmount(A* Rprice);
			a.setComAmount(A*cprice);
			a.setDate(order.getDate4());
			a.setPeople(A);
			a.setPeopleAmount(A*Eprice);
			a.setPrice( Rprice);
			a.setVoucherId(id+1);
			OrderDTO O=orderService.Save(a);
			if(O==null) {
				model.addAttribute("notOrder", "Can't Order");
				return "order";
			}
			System.out.println(order.getDate4());
		}
		count++;
		}
		List<OrderDTO> orderlist=orderService.findByVoucherId(id+1);
		model.addAttribute("orderlist", orderlist);}
		if(select=="") {
        return "redirect:order";}
		else {
			 redirectAttributes.addAttribute("selectDate", select);
			 return "redirect:selectOrder";
		}
    }
	
	
	@GetMapping("/paidPage")
    public String paidPage(Model model,@RequestParam(value="selectDate", required=false) String selectDate) {
	if(selectDate==null || selectDate=="") {
		List<WeeklyVoucher> list=weekRepo.findByStatus("Paid");
		model.addAttribute("page", list);
		model.addAttribute("mss", "a");
		model.addAttribute("paid", "paid");}
	else {
		String[] dates = selectDate.split(" - ");
        String startDate = dates[0];
        if(dates.length==1) {
        	List<WeeklyVoucher> list=weekRepo.findByStatus("Paid");
    		model.addAttribute("page", list);
    		model.addAttribute("mss", "a");
    		model.addAttribute("paid", "paid");
    		
        }else {
        		String endDate = dates[1];
    	        String[] parts = startDate.split("/");
    	        String sformattedDate =parts[2]+"-"+parts[0]+"-"+parts[1];
    	        String[] parts1 = endDate.split("/");
    	        String eformattedDate = parts1[2]+"-"+parts1[0]+"-"+parts1[1];
    	        System.out.println("month"+sformattedDate+"ldnf"+eformattedDate);
    	        List<WeeklyVoucher> list=weekRepo.findByVoucherPage("Paid", sformattedDate,eformattedDate);
    	        model.addAttribute("page", list);
    			model.addAttribute("mss", "a");
    			model.addAttribute("paid", "paid");
    			model.addAttribute("pa", "pa");
        }
	}
	model.addAttribute("pa", "pa");
        return "VoucherPage";
    }
	
	@GetMapping("/unpaidPage")
    public String unpaidPage(Model model,@RequestParam(value="selectDate", required=false) String selectDate) {
		if(selectDate==null || selectDate=="") {
			List<WeeklyVoucher> list=weekRepo.findByStatus("Unpaid");
			model.addAttribute("page", list);
			model.addAttribute("mss", "a");
			model.addAttribute("paid", "paid");}
		else {
			String[] dates = selectDate.split(" - ");
	        String startDate = dates[0];
	        String endDate = dates[1];
	        String[] parts = startDate.split("/");
	        String sformattedDate =parts[2]+"-"+parts[0]+"-"+parts[1];
	        String[] parts1 = endDate.split("/");
	        String eformattedDate = parts1[2]+"-"+parts1[0]+"-"+parts1[1];
	        System.out.println("month"+sformattedDate+"ldnf"+eformattedDate);
	        List<WeeklyVoucher> list=weekRepo.findByVoucherPage("Unpaid", sformattedDate,eformattedDate);
	        model.addAttribute("page", list);
			model.addAttribute("mss", "a");
			model.addAttribute("paid", "paid");
			}
		model.addAttribute("unpa", "unpa");
		return "VoucherPage";
    }
	
	@GetMapping("/monthlyVoucher")
    public String PaymentVoucher(Model model,@RequestParam(value="month", required=false) String month1) {
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(month1+"dfn");
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate now = LocalDate.now();
		String today = dtf.format(now);
		
	
		if(month1==null || month1=="") {
		Calendar calendar = Calendar.getInstance();
		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH); // Note: Calendar.MONTH starts from 0 for January
		 DateFormatSymbols dfs = new DateFormatSymbols();
	        String monthAbbreviation = dfs.getShortMonths()[month];
		// Get start date of current month
		calendar.set(year, month, 1);
		Date startDate = calendar.getTime();
		String startDateString = dateFormat.format(startDate);
		
		// Get end date of current month
		int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
		calendar.set(year, month, lastDay);
		Date endDate = calendar.getTime();
		String endDateString = dateFormat.format(endDate);
		model.addAttribute("monthDate", monthAbbreviation+"-"+year);
		List<WeeklyVoucher> weeklyvoucher=weeklyService.findByVoucher(startDateString, endDateString);
		model.addAttribute("week", weeklyvoucher);
		model.addAttribute("today", today);
		int totalAmount=0;
		for(WeeklyVoucher A:weeklyvoucher) {
			totalAmount=totalAmount+A.getTotalAmount();
		}
		model.addAttribute("totalAmount", totalAmount);
		}
		else {
			
			String[] dates = month1.split("-");
	        String month3 = dates[0];
	        String year3 = dates[1];
			Calendar calendar = Calendar.getInstance();
			int year = calendar.get(Calendar.YEAR);
			int month = calendar.get(Calendar.MONTH); // Note: Calendar.MONTH starts from 0 for January
			// Get start date of current month
			int month4=Integer.valueOf(month3);
			int year4=Integer.valueOf(year3);
			calendar.set(year4, month4-1, 1);
			Date startDate = calendar.getTime();
			String startDateString = dateFormat.format(startDate);
			
			// Get end date of current month
			int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
			calendar.set(year4, month4-1, lastDay);
			Date endDate = calendar.getTime();
			String endDateString = dateFormat.format(endDate);
			System.out.println("ndfnstart"+startDateString);
			System.out.println("djnddfnk"+endDateString );
			List<WeeklyVoucher> weeklyvoucher=weeklyService.findByVoucher(startDateString, endDateString);
			model.addAttribute("week", weeklyvoucher);
			model.addAttribute("today", today);
			
			DateFormatSymbols dfs = new DateFormatSymbols();
	        String monthAbbreviation = dfs.getShortMonths()[month4-1];
		
			model.addAttribute("monthDate", monthAbbreviation+"-"+year4);
			int totalAmount=0;
			for(WeeklyVoucher A:weeklyvoucher) {
				totalAmount=totalAmount+A.getTotalAmount();
			}
			model.addAttribute("totalAmount", totalAmount);
			
		}
		Optional<Restaurant> rs=Resrepo.findById(1);
		if (rs.isPresent()) {
			Restaurant res = rs.get();
			model.addAttribute("ResName", res.getName());
			model.addAttribute("Phone", res.getPhone());
		}
		
        return "MonthlyVoucher";
    }
	
	@GetMapping("/viewCost")
    public String viewCost() {
        return "viewcost";
    }
	
	
	
	@GetMapping("/lunchInfo")
    public String lunchInfo(Model model,HttpSession session) {
    List<lunchView> lView = lvRepo.findAll();
    lunchView lv = lvRepo.findByMaxDate();
    List<lunchView> weekView = lvRepo.findTop5ByOrderByLdateDesc();
    if( lView == null || lv == null || weekView == null )
    {
    	return "LunchInfo";
    }else {
    List<String> dates = new ArrayList<>();
    List<Integer> relist = new ArrayList<>();
    List<Integer> rnelist = new ArrayList<>();
    List<Integer> uelist = new ArrayList<>();
    for(lunchView l : weekView)
    {
    	dates.add(l.getLdate());
    	relist.add(l.getRe());
    	rnelist.add(l.getRne());
    	uelist.add(l.getUe());
    }
    model.addAttribute("weekView", weekView);
    model.addAttribute("dates", dates);
    model.addAttribute("relist", relist);
    model.addAttribute("rnelist", rnelist);
    model.addAttribute("uelist", uelist);
    session.setAttribute("lv", lv);
    model.addAttribute("date", lv.getLdate());
    model.addAttribute("re", lv.getRe());
    model.addAttribute("rne", lv.getRne());
    model.addAttribute("ue", lv.getUe());
    System.out.print(dates+"bb");
    System.out.print(lv.getRne()+"bb");
    System.out.print(lv.getUe()+"bb");
        session.setAttribute("lunchView", lView);
        return "LunchInfo";
    }
	}	
	
	@GetMapping("/about")
    public String viewAbout(contact con,Model model,PriceInfo info) {
   con = cRepo.findContact();
  model.addAttribute("contact", con);
  info=price.findPrice();
  model.addAttribute("price", info);

        return "About";
    }
	
    @PostMapping("/convert-to-image")
    public ResponseEntity<String> convertToImage(@RequestParam("file") MultipartFile file) {
        // Convert the PDF file to an image
        String imageString = convertPdfToImage(file);

        // Return the image as a base64-encoded string
        return ResponseEntity.ok(imageString);
    }
    
    private String convertPdfToImage(MultipartFile file) {
        try (PDDocument document = PDDocument.load(file.getInputStream())) {
            // Create a PDF renderer
            PDFRenderer renderer = new PDFRenderer(document);

            // Render the first page of the PDF as an image
            BufferedImage image = renderer.renderImage(0);

            // Convert the image to a base64 string
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(image, "png", baos);
            baos.flush();
            byte[] imageBytes = baos.toByteArray();
            baos.close();

            return Base64.getEncoder().encodeToString(imageBytes);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
    
    @GetMapping("/viewProfile")
    public ModelAndView viewProfile(ModelMap model,HttpSession session,Principal prin) {
 	mailSetting mail = mRepo.findMail();
		model.addAttribute("mail", mail);
		contact con = cRepo.findContact();
		model.addAttribute("contact", con);
      Employee emp = employeeRepository.findByEmail(prin.getName());
      session.setAttribute("emp", emp);
        return new ModelAndView("ProfileSetting","employee",new ChangePasswordForm());
       
    }
 
    @PostMapping("/changeEmail")
    public String changeEmail(@RequestParam("employeeName") String name, 
            @RequestParam("employeeEmail") String email,ModelMap model,HttpSession session,RedirectAttributes redirectAttributes) {
     String email1 = (String) session.getAttribute("Email");
     int i = employeeRepository.updateWithEmail1(name, email, email1);
       redirectAttributes.addFlashAttribute("success", "Successfully!Please Log in again...");
       
      return "redirect:/logout";
    }
 @PostMapping("/changePassword")
 public String changePassword(@ModelAttribute("employee") ChangePasswordForm form, Principal principal, Model model,HttpSession session,RedirectAttributes redirectAttributes) {
     Employee employee = employeeRepository.findByEmail(principal.getName());
     BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
     if (!encoder.matches(form.getOldPassword(), employee.getPassword())) {
         redirectAttributes.addFlashAttribute("errorMessage", "Old password is incorrect !!");

         return "redirect:/viewProfile";
     }
           
     if (!form.getNewPassword().equals(form.getConfirmPassword())) {
         redirectAttributes.addFlashAttribute("errorMessage3", "Password Doesn't Match !!");
         return "redirect:/viewProfile";
     }
       employee.setPassword(encoder.encode(form.getConfirmPassword()));
     employeeRepository.save(employee);
     redirectAttributes.addFlashAttribute("successMessage2", "Successfully!Please Log in again...");
     return "redirect:/viewProfile";        
}

}
