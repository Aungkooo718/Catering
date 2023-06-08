package com.exercise.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.stream.Collectors;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.mail.util.ByteArrayDataSource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.Employee;

import com.exercise.dto.ResponseMessage;
import com.exercise.model.AvoidMeat;
import com.exercise.model.Holiday;
import com.exercise.model.Image;
import com.exercise.model.PriceInfo;
import com.exercise.model.TimeTable;
import com.exercise.model.lunchView;
import com.exercise.repo.AnnounceRepo;
import com.exercise.repo.HolidayRepository;
import com.exercise.repo.PriceInfoRepository;
import com.exercise.service.AnnounceService;
import com.exercise.service.AvoidMeatService;
import com.exercise.service.DoorlogExcelHelper;
import com.exercise.service.EmployeeService;
import com.exercise.service.ExcelHelper;
import com.exercise.service.ExcelService;
import com.google.gson.Gson;

import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

import com.exercise.dao.*;
import com.exercise.dto.*;

@Controller
public class cateringController {
	@Autowired
	private JavaMailSender javaMailSender;
	@Autowired
	private Configuration config;
	Random random = new Random(1000);
	@Autowired
	AnnounceService ser;
	@Autowired
	AnnounceRepo rep;
	@Autowired
	PriceInfoRepository pRepo;
	@Autowired
	TimeTableRepository tbRepo;
	@Autowired
	ExcelService fileService;
	@Autowired
	ExcelService employeeService;
	@Autowired
	EmployeeService empService;
	@Autowired
	AvoidMeatService avoidMeatService;
	@Autowired
	EmployeeRepository EmpRep;
	@Autowired
	HolidayRepository holiRep;
	@Autowired
	doorlogViewRepository dlviewRepo;
	@Autowired
	RegisterRepository reRepo;
	@Autowired
	lunchViewRepository lunchRepo;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login(Model model,@RequestParam(value="user", required=false) String user) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//				  Employee dto=new Employee(); dto.setId(1); dto.setDivision("Managment");
//		 dto.setStaffId(""); dto.setName("ZweWintHtun"); dto.setDoorLogNo("555555");
//		  dto.setDepartment("HR"); dto.setEmail("b@gmail.com");
//		  dto.setPassword(encoder.encode("bbbbbb")); dto.setTeam("team");
//		  dto.setStatus("Active"); dto.setRole("ADMIN"); employeeService.save(dto);
//		  
		
		// auto delete announcement
		System.out.println("userEmail"+user);
		if(user!=null) {
		if(empService.unlock1(user)) {
			System.out.println(user+"sssfff");
			model.addAttribute("unlock", "unlock");
		}
		}
	
			if (!ser.findExpiredAnnouncements().isEmpty()) {
				
				rep.deleteAll();
			}
			
				return "Login";
		
	}
	@GetMapping("/")

	public String Mnu(Principal principal, Model model, HttpSession session) {
		Employee emp = EmpRep.findByEmail(principal.getName());

		session.setAttribute("maindoorlog", emp.getDoorLogNo());
		session.setAttribute("role", emp.getRole());
		session.setAttribute("ID", emp.getId());
		session.setAttribute("Name", emp.getName());
		session.setAttribute("Email", emp.getEmail());
		session.setAttribute("Department", emp.getDepartment());
		session.setAttribute("Division", emp.getDivision());
		session.setAttribute("Doorlog", emp.getDoorLogNo());
		session.setAttribute("emailNoti", emp.isEmailNoti());
		List<Holiday> holiday = fileService.getAllHoliday();
		List<Date> holi = new ArrayList<>();
		for (Holiday A : holiday) {
			holi.add(A.getDate());
			System.out.println(A.getDate());
		}
		session.setAttribute("holiday", holi);
		model.addAttribute("Holidays", holi);
		model.addAttribute("avoidMeat", avoidMeatService.getAllAvoidMeats());
		return "redirect:/dashboard";

	}

	@GetMapping("/menuUpload")
	public String displayView() {

		return "menu";
	}

	@GetMapping("/uploadExcel")

	public String addData() {

		return "uploadExcel";
	}

	@PostMapping("/uploadExcelToDatabase")

	public String uploadFile(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {
		String message = "";

		if (file == null || file.isEmpty()) {
			message = "Please choose import file!";
			redirectAttributes.addAttribute("message", message);
			return "redirect:/dashboard";
		}

		if (!ExcelHelper.hasExcelFormat(file)) {
			message = "Please choose excel file!";
			redirectAttributes.addAttribute("message", message);
			return "redirect:/dashboard";
		}
		try {
			Workbook workbook = WorkbookFactory.create(file.getInputStream());
			String targetSheetName = "Employees";
			Sheet targetSheet = null;
			for (int i = 0; i < workbook.getNumberOfSheets(); i++) {
				Sheet sheet = workbook.getSheetAt(i);
				if (sheet.getSheetName().equalsIgnoreCase(targetSheetName)) {
					targetSheet = sheet;
					break;
				}
			}
			if (targetSheet == null) {
				message = "Please check excel file. Sheet name must be Employees!";
				redirectAttributes.addAttribute("message", message);
				return "redirect:/dashboard";
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			List<Employee> employees = ExcelHelper.excelToTutorials(file.getInputStream());
			List<Employee> employee_list = EmpRep.findAll();
			for (Employee employee : employees) {
				String staffId = employee.getStaffId();
				String doorLogNo = employee.getDoorLogNo();

				// Check if the staff_id exists in the employeeList
				List<Employee> matchingEmployees = employee_list.stream().filter(e -> e.getStaffId().equals(staffId))
						.collect(Collectors.toList());

				if (!matchingEmployees.isEmpty()) {
					// If staff_id exists, check if the door_log_no is the same
					boolean doorLogNoMatch = matchingEmployees.stream()
							.anyMatch(e -> e.getDoorLogNo().equals(doorLogNo));

					if (!doorLogNoMatch) {
						System.out.println("Check doorlogggggggggggggggggggg");
						// Send an error to the other controller's get method
						// Handle the error as per your application's requirements
						// return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Door Log No does
						// not match for staff_id: " + staffId);
						message = "Please check staff id " + staffId + " and doorlog " + doorLogNo + " with staff id "
								+ staffId + " in employee list!";
						redirectAttributes.addAttribute("message", message);
						return "redirect:/dashboard";
					}
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			message = "Could not upload the file: " + file.getOriginalFilename() + "!"
					+ "please check sheet name Employees";
			redirectAttributes.addAttribute("message", message);
			return "redirect:/dashboard";
		}

		if (ExcelHelper.hasExcelFormat(file)) {
			try {
				fileService.save(file);

				message = "Uploaded the file successfully: " + file.getOriginalFilename();
				redirectAttributes.addAttribute("message", message);
				return "redirect:/dashboard";
			} catch (Exception e) {
				message = "Could not upload the file: " + file.getOriginalFilename() + "!"
						+ "please check sheet name Employees";
				redirectAttributes.addAttribute("message", message);
				return "redirect:/dashboard";
			}
		}

		return "redirect:/dashboard";

	}

	@RequestMapping(value = "/registerEat/{date}", method = RequestMethod.GET)
	public String registerEat(@PathVariable String date, ModelMap model) {
		List<register> register = new ArrayList<>();
		List<String> relist = dlviewRepo.findRE(date);
		for (String redoorlog : relist) {
			register reg = reRepo.findByDoorLogNo(redoorlog);
			register.add(reg);
		}
		model.addAttribute("re", relist);
		model.addAttribute("date", date);
		model.addAttribute("register", register);
		return "registerEat";

	}

	@RequestMapping(value = "/registerNoEat/{date}", method = RequestMethod.GET)
	public String registerNoEat(@PathVariable String date, ModelMap model) {
		List<register> register = new ArrayList<>();
		List<String> rnelist = dlviewRepo.findRNE(date);
		for (String rnedoorlog : rnelist) {
			register reg = reRepo.findByDoorLogNo(rnedoorlog);
			register.add(reg);
		}
		model.addAttribute("rne", rnelist);
		model.addAttribute("date", date);
		model.addAttribute("register", register);
		return "registerNoEat";

	}

	@RequestMapping(value = "/unregisterEat/{date}", method = RequestMethod.GET)
	public String uregisterEat(@PathVariable String date, ModelMap model) {
		List<Employee> employee = new ArrayList<>();
		List<String> uelist = dlviewRepo.findUE(date);
		System.out.println("Hello" + uelist);
		for (String uedoorlog : uelist) {
			Employee emp = EmpRep.findByDoorLogNo(uedoorlog);
			employee.add(emp);
		}
		model.addAttribute("ue", uelist);
		model.addAttribute("date", date);
		model.addAttribute("employee", employee);
		return "unregisterEat";

	}

//	 @GetMapping("/lunchInfo")
//	    public String lunchInfo(Model model,HttpSession session) {
//	    List<lunchView> lView = lunchRepo.findAll();
//	        session.setAttribute("lunchView", lView);
//	        return "LunchInfo";
//	    }
	@GetMapping("/review")
	public String Review(ModelMap model, HttpSession session) {
		String doorlog = (String) session.getAttribute("maindoorlog");
		List<AvoidMeat> meat = reRepo.findAvoidMeatListByDoorLogNo(doorlog);
		System.out.print(meat);
		model.addAttribute("meat", meat);
		return "Review";
	}

	@GetMapping("/forgot_password")
	public String showForgotPasswordForm() {
		return "forgot_password";
	}

	@PostMapping("/forgot_password")
	public String processForgotPassword(HttpServletRequest request, Model model)
			throws UnsupportedEncodingException, MessagingException {
		String email = request.getParameter("email");
		// String token = new RandomString(30).nextString();
		String token = RandomStringUtils.randomAlphanumeric(30);
		System.out.print(email);
		try {
			empService.updateResetPasswordToken(token, email);
			String resetPasswordLink = Utility.getSiteURL(request) + "/reset_password?token=" + token;
			System.out.println("ResetPasswordLink " + resetPasswordLink);
			Map<String, Object> map = new HashMap<>();
			map.put("link", resetPasswordLink);
			sendForgetEmail(email, resetPasswordLink, map);
			model.addAttribute("message", "We have sent a reset password link to your email. Please check.");

		} catch (Exception ex) {
			model.addAttribute("message2", ex.getMessage());
		}

		return "forgot_password";
	}

	public void sendForgetEmail(String recipientEmail, String link, Map<String, Object> model)
			throws MessagingException, TemplateNotFoundException, MalformedTemplateNameException, ParseException,
			IOException, TemplateException {
		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		helper.setFrom("contact@CSMIT.com", "CSMIT Service");
		helper.setTo(recipientEmail);
		Template t = config.getTemplate("email-pw.ftl");
		String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
		String subject = "Here's the link to reset your password";

//	        String content = "<p>Hello,</p>"
//	                + "<p>You have requested to reset your password.</p>"
//	                + "<p>Click the link below to change your password:</p>"
//	                + "<p><a href=\"" + link + "\">Change my password</a></p>"
//	                + "<br>"
//	                + "<p>Ignore this email if you do remember your password, "
//	                + "or you have not made the request.</p>";

		helper.setSubject(subject);

		helper.setText(html, true);

		javaMailSender.send(message);
	}

	@GetMapping("/reset_password")
	public String showResetPasswordForm(@Param(value = "token") String token, Model model) {
		Employee customer = empService.getByResetPasswordToken(token);
		model.addAttribute("token", token);

		if (customer == null) {

			model.addAttribute("message", "Invalid Token");
			return "message";
		}

		return "reset_password";
	}

	@PostMapping("/reset_password")
	public String processResetPassword(HttpServletRequest request, Model model, HttpSession session) {
		String token = request.getParameter("token");
		String password = request.getParameter("password");

		Employee customer = empService.getByResetPasswordToken(token);
		model.addAttribute("title", "Reset your password");

		if (customer == null) {
			model.addAttribute("message2", "Invalid Token");
			return "message";
		} else {
			empService.updatePassword(customer, password);

			model.addAttribute("message", "You have successfully changed your password.");
		}

		return "reset_password";
	}

}
