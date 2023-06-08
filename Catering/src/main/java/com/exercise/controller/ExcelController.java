package com.exercise.controller;

import java.io.IOException;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;

import java.util.List;

import javax.validation.ConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.dto.ResponseMessage;
import com.exercise.repo.DoorlogRepository;
import com.exercise.dto.Employee;
import com.exercise.service.*;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;


@Controller
@RequestMapping("/api/excel")
public class ExcelController {
	 @Autowired
	  ExcelService fileService;
	 @Autowired
	 DoorlogExcelHelper doorlogExcelHelper;
	 @Autowired
	  DoorlogRepository doorlogRepo;
	 @GetMapping("/addMultiDate")
	 public String addDate() {
			
			return "datepicker";
	}
	 @GetMapping("/uisidebar")
	 public String sidebar() {
			
			return "uisidebar";
		}
	 
	 @GetMapping("/uploadEmp")
	 public String addData() {
			
			return "uploadExcel";
		}
//	  @PostMapping("/uploadExcelToDatabase")
//	  public String uploadFile(@RequestParam("file") MultipartFile file,Model model) {
//	    String message = "";
//	    
//	    
//	    if (ExcelHelper.hasExcelFormat(file)) {
//	      try {
//	        fileService.save(file);
//
//	        message = "Uploaded the file successfully: " + file.getOriginalFilename();
//	        model.addAttribute("message", message);
//	        System.out.println(message);
//	        return "redirect:/dashboard";
//	      } catch (Exception e) {
//	        message = "Could not upload the file: " + file.getOriginalFilename() + "!";
//	        System.out.println(message);
//	        model.addAttribute("message", message);
//	        return "redirect:/dashboard";
//	      }
//	    }
//
//	    message = "Please upload an excel file!";
//	    model.addAttribute("message", message);
//	    return "redirect:/dashboard";
//	  }
//	 
	  
	  @GetMapping("/uploadHoliday")
		 public String addHoliday() {
				
				return "uploadHoliday";
			}
		  @PostMapping("/uploadHolidayToDatabase")
		  public String uploadHolidayFile(@RequestParam("file") MultipartFile file,RedirectAttributes redirectAttributes) {
		    String message = "";		 
		    if(file==null || file.equals("")) {
		    	message = "Please choose import file!";
			    redirectAttributes.addAttribute("message", message);
			    return "redirect:/dashboard";
		    }
		    
		    if (ExcelHelper.hasExcelFormat(file)) {
		      try {
		        fileService.saveHoliday(file);
		        message = "Uploaded the file successfully: " + file.getOriginalFilename();
		        redirectAttributes.addAttribute("message", message);
		        return "redirect:/dashboard";

		      } catch (Exception e) {
		    	  message = "Could not upload the file: " + file.getOriginalFilename() + " " + "Please check sheet name Holidays" + "!";
			        redirectAttributes.addAttribute("message", message);
			        return "redirect:/dashboard";
		      }
		    }

		    message = "Please upload an excel file!";
		    redirectAttributes.addAttribute("message", message);
		    return "redirect:/dashboard";
		  }
		  
		  @GetMapping("/uploadDoorlogData")
			 public String addDoorlogData() {
					
					return "uploadDoorlog";
				}


@PostMapping("/uploadDoorlogToDatabase")
		  public String uploadDoorlogFile(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {
		      String message = "";
		      if (file == null || file.isEmpty()) {
		          message = "Please choose a file to import!";
		          redirectAttributes.addAttribute("message", message);
		          return "redirect:/dashboard";
		      }

		      if (ExcelHelper.hasExcelFormat(file)) {
		          try {
		              XSSFWorkbook workbook = new XSSFWorkbook(file.getInputStream());
		              XSSFSheet sheet = workbook.getSheet(DoorlogExcelHelper.SHEET);
		              if (sheet != null) {
		                  boolean isSave = fileService.saveDoorlog(file);
		                  if (isSave) {
		                      message = "Uploaded the file successfully: " + file.getOriginalFilename();
		                      redirectAttributes.addAttribute("message", message);
		                      return "redirect:/dashboard";
		                  } else {
		                      message = "Could not save the file: " + file.getOriginalFilename();
		                      redirectAttributes.addAttribute("message", message);
		                      return "redirect:/dashboard";
		                  }
		              } else {
		                  message = "Invalid sheet name. Please check the file.Sheet name must be DoorAccess_TransactionData";
		                  redirectAttributes.addAttribute("message", message);
		                //  redirectAttributes.addFlashAttribute("message", message);
		                  return "redirect:/dashboard";
		              }
		          } catch (IOException e) {
		              message = "Error occurred while processing the file: " + file.getOriginalFilename();
		              redirectAttributes.addAttribute("message", message);
		              return "redirect:/dashboard";
		          }
		      }

		      message = "Please upload an Excel file!";
		      redirectAttributes.addAttribute("message", message);
		      return "redirect:/dashboard";
		  }



	  
	  @GetMapping("/tutorials")
	  public ResponseEntity<List<Employee>> getAllTutorials() {
	    try {
	      List<Employee> tutorials = fileService.getAllTutorials();

	      if (tutorials.isEmpty()) {
	        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	      }

	      return new ResponseEntity<>(tutorials, HttpStatus.OK);
	    } catch (Exception e) {
	      return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
	    }
	  }
	  



}
