package com.exercise.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.YearMonth;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAdjusters;
import java.util.List;
import java.util.Optional;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.rendering.ImageType;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.Employee;
import com.exercise.model.Announce;
import com.exercise.model.ChangePasswordForm;
import com.exercise.model.Image;
import com.exercise.repo.DoorlogRepository;
import com.exercise.repo.ImageRepository;
import com.exercise.repo.PriceInfoRepository;
import com.exercise.service.AnnounceService;
import com.exercise.service.ImageService;
import com.exercise.service.OrderService;
@Controller
public class ImageController {
 @Autowired
 private ImageService service;
 @Autowired
 private ImageRepository repo;
 @Autowired
 private DoorlogRepository doorlogRepo;
 @Autowired
 OrderService orderService;
 @Autowired
 EmployeeRepository empRepo;
 @Autowired
 PriceInfoRepository priceinfoRepo;
 @Autowired
 private AnnounceService service2;
 @GetMapping("/menuImport")
 public String images(HttpSession session,ModelMap model) {
  Image image =  service.getLatestImage();
  session.setAttribute("list", image);
  Announce announce =  service2.getLatestAnnounce();
  session.setAttribute("list2", announce);
 
 
  return "index";
 }
 
 @GetMapping("/individualCost")
 public String cost(HttpSession session,Model model,Principal principal) {
	 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	 Employee emp=empRepo.findByEmail(principal.getName());
     String doorlogno=emp.getDoorLogNo();
	 LocalDate now = LocalDate.now();
	 int year = now.getYear();
     int month = now.getMonthValue();
     YearMonth yearMonth = YearMonth.of(year, month);
     // Get the start date and end date of the current month
     LocalDate startDate = yearMonth.atDay(1);
     LocalDate endDate = yearMonth.atEndOfMonth();
     String startDateStr = startDate.format(formatter);
	 String endDateStr = endDate.format(formatter);
	 String maxDoorlogDate=doorlogRepo.findMaxDoorLogTimeOfCurrentMonth();
     List<Object> matchingDates=doorlogRepo.findMatchingDates(doorlogno, startDateStr, endDateStr);
     List<Object> missingDates=doorlogRepo.findMissingDates(doorlogno, startDateStr, endDateStr);
     List<Object> missingDatesReg=doorlogRepo.findMissingDatesFromReg(doorlogno, startDateStr, maxDoorlogDate);
     
     model.addAttribute("matchingDates", matchingDates);
     model.addAttribute("missingDates", missingDates);
     model.addAttribute("missingDatesReg", missingDatesReg);
	 
	 return "individualCost";
 }
 
 @GetMapping("/dashboard")
 public String menu(HttpSession session,Model model,Principal principal) {
	 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	 LocalDate now = LocalDate.now();
     LocalDate nextMonday = now.with(TemporalAdjusters.next(DayOfWeek.MONDAY));
     LocalDate nextFriday = nextMonday.plusDays(4);
     String nxtMonday=formatter.format(nextMonday);
     String nxtFriday=formatter.format(nextFriday);
     
     int year = now.getYear();
     int month = now.getMonthValue();
     YearMonth yearMonth = YearMonth.of(year, month);

     // Get the start date and end date of the current month
     LocalDate startDate = yearMonth.atDay(1);
     LocalDate endDate = yearMonth.atEndOfMonth();
     String startDateStr = startDate.format(formatter);
	 String endDateStr = endDate.format(formatter);
	 
	 LocalDate startOfYear = now.withDayOfYear(1);
     LocalDate endOfYear = now.withDayOfYear(now.lengthOfYear());
     String startYear=startOfYear.format(formatter);
     String endYear=endOfYear.format(formatter);
     
     Integer orderCount = orderService.getCountOfPeople(nxtMonday, nxtFriday);
     Integer datCost = orderService.getCountOfPeople(startDateStr, endDateStr);
     Integer annualCost = orderService.getCountOfPeople(startYear, endYear);
     Employee emp=empRepo.findByEmail(principal.getName());
     String doorlogno=emp.getDoorLogNo();
     String maxDoorlogDate=doorlogRepo.findMaxDoorLogTimeOfCurrentMonth();
     List<Object> matchingDates=doorlogRepo.findMatchingDates(doorlogno, startDateStr, endDateStr);
     List<Object> missingDates=doorlogRepo.findMissingDates(doorlogno, startDateStr, endDateStr);
     List<Object> missingDatesReg=doorlogRepo.findMissingDatesFromReg(doorlogno, startDateStr, maxDoorlogDate);
     Integer totalEmpCost=matchingDates.size()+missingDates.size()+missingDatesReg.size();
     Integer totalMonthlyEmpCost=totalEmpCost*priceinfoRepo.getEmployeePrice();
     
     if(totalMonthlyEmpCost!=null && totalMonthlyEmpCost!=0) {
    	 int count=totalMonthlyEmpCost.intValue();
    	 model.addAttribute("totalEmpCost", count);
     }else {
    	 int count=0;
    	 model.addAttribute("totalEmpCost", count);
     }
     
     if(annualCost!=null && annualCost!=0) {
    	 int count=annualCost.intValue()*priceinfoRepo.getCompanyPrice();
    	 model.addAttribute("annualCost", count);
     }else {
    	 int count=0;
    	 model.addAttribute("annualCost", count);
     }
     if(datCost!=null && datCost!=0) {
    	 int count=datCost.intValue()*priceinfoRepo.getCompanyPrice();;
    	 model.addAttribute("datCost", count);
     }else {
    	 int count=0;
    	 model.addAttribute("datCost", count);
     }
     if (orderCount != null && orderCount != 0) {
         int count = orderCount.intValue();
         model.addAttribute("orderCount", count);
     }else {
    	 int count = 0;
         model.addAttribute("orderCount", count);
     }

  Image image =  service.getLatestImage();
  session.setAttribute("list", image);
  Announce announce =  service2.getLatestAnnounce();
  session.setAttribute("announce", announce);
  
  return "Dashboard";
 }
 
 
 @GetMapping("/delete")
 public String delete(HttpSession session,ModelMap model) {
  repo.deleteAll();
  model.addAttribute("Delete", " Delete Successfully");
  return "index";
 }
 
 @PostMapping("/upload")
 public String fileUpload(RedirectAttributes redirectAttributes,@RequestParam("file") MultipartFile file,  Model model) throws IOException {
  String fileName = file.getOriginalFilename();  // Assuming 'file' is of type MultipartFile
  String extension = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
  if (extension.equals("pdf")) {
      // It's a PDF file
  // Load PDF document using Apache PDFBox
         PDDocument doc = PDDocument.load(file.getInputStream());
      // Create a new JPEG image from the first page of the PDF documenta
         BufferedImage image = new PDFRenderer(doc).renderImageWithDPI(0, 300, ImageType.RGB);
         // Convert the JPEG image to a byte array
         ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
         ImageIO.write(image, "jpg", outputStream);
         byte[] imageBytes = outputStream.toByteArray();
         Image imagepdf = new Image();
         imagepdf.setProfilePicture(file.getOriginalFilename().replaceAll("\\.pdf$", ".jpg"));
         imagepdf.setContent(imageBytes);
         imagepdf.setSize(file.getSize());
    service.createImage(imagepdf);
    redirectAttributes.addFlashAttribute("success", " Pdf Upload Successfully");
   return "redirect:dashboard";
  }else  if (extension.equals("jpg")) {
   Image image = new Image();
     image.setProfilePicture(fileName);
     image.setContent(file.getBytes());
     image.setSize(file.getSize());
     service.createImage(image);
     
     redirectAttributes.addFlashAttribute("success", "File Upload Successfully");
     return "redirect:dashboard";
  }else  if (extension.equals("jpe"
    + "g")) {
   Image image = new Image();
     image.setProfilePicture(fileName);
     image.setContent(file.getBytes());
     image.setSize(file.getSize());
     service.createImage(image);
     
     redirectAttributes.addFlashAttribute("success", "File Upload Successfully");
     return "redirect:dashboard";
  }
  else  if (extension.equals("png")) {
   Image image = new Image();
     image.setProfilePicture(fileName);
     image.setContent(file.getBytes());
     image.setSize(file.getSize());
     service.createImage(image);
     
     redirectAttributes.addFlashAttribute("success", "File Upload Successfully");
     return "redirect:dashboard";
  }else {
	  redirectAttributes.addFlashAttribute("Delete", "Uploaded Fail !!!"
       + "");
     return "redirect:dashboard";
   
  }
 }
 
 
 @GetMapping("/downloadfile")
 public void downloadFile(@Param("id") Long id , Model model, HttpServletResponse response) throws IOException {
  Optional<Image> temp = service.findImageById(id);
  if(temp!=null) {
   Image image = temp.get();
   response.setContentType("application/octet-stream");
   String headerKey = "Content-Disposition";
   String headerValue = "attachment; filename = "+image.getProfilePicture();
   response.setHeader(headerKey, headerValue);
   ServletOutputStream outputStream = response.getOutputStream();
   outputStream.write(image.getContent());
   outputStream.close();
  }
 }
 
 @GetMapping("/image")
 public void showImage(@Param("id") Long id, HttpServletResponse response, Optional<Image> student)
   throws ServletException, IOException { 
  student = service.findImageById(id);
  response.setContentType("image/jpeg, image/jpg, image/png, image/gif, image/pdf");
  response.getOutputStream().write(student.get().getContent());
  response.getOutputStream().close();
 }
}
