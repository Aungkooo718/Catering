package com.exercise.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.pdfbox.pdmodel.PDDocument;

import org.apache.pdfbox.rendering.ImageType;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.model.Announce;
import com.exercise.model.ChangePasswordForm;
import com.exercise.repo.AnnounceRepo;
import com.exercise.service.AnnounceService;
@Controller
public class AnnounceCon{
 @Autowired
 private AnnounceService service;
 @Autowired
 private AnnounceRepo repo;

 @PostMapping("/announce")
 public String fileUpload(RedirectAttributes redirectAttributes,@RequestParam("file2") MultipartFile file2,  Model model ,@RequestParam String text,@RequestParam("days") int days ) throws IOException {
	 String fileName = file2.getOriginalFilename();  // Assuming 'file' is of type MultipartFile
	 String extension = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
	 if (extension.equals("pdf")) {
		    // It's a PDF file
		// Load PDF document using Apache PDFBox
         PDDocument doc = PDDocument.load(file2.getInputStream());
      // Create a new JPEG image from the first page of the PDF documenta
         BufferedImage image = new PDFRenderer(doc).renderImageWithDPI(0, 300, ImageType.RGB);
         // Convert the JPEG image to a byte array
         ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
         ImageIO.write(image, "jpg", outputStream);
         byte[] imageBytes = outputStream.toByteArray();
         Announce imagepdf = new Announce();
         imagepdf.setProfilePicture(file2.getOriginalFilename().replaceAll("\\.pdf$", ".jpg"));
         imagepdf.setContent(imageBytes);
         imagepdf.setSize(file2.getSize());
        imagepdf.setText(text);
        //date format
		  LocalDate today=LocalDate.now();
		  
		  
		  LocalDate yes=today.plusDays(days);
		  DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		  String dateString = yes.format(formatter);
		  imagepdf.setDays(dateString);

       
        System.out.println("HHHHHHHHHHHHHHHH" +text);
		  service.createImage(imagepdf);
		  redirectAttributes.addFlashAttribute("success1", " Announced Successfully");
		 return "redirect:dashboard";
		}else if (extension.equals("jpg")) {
              Announce image = new Announce();
			  image.setProfilePicture(fileName);
			  image.setContent(file2.getBytes());
			  image.setSize(file2.getSize());			 
			  image.setText(text);
			  //date format
			  LocalDate today=LocalDate.now();
			  LocalDate yes=today.plusDays(days);
			  DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			  String dateString = yes.format(formatter);
			  image.setDays(dateString);

			  service.createImage(image);
			  
			  redirectAttributes.addFlashAttribute("success1", "Announced Successfully");
			  return "redirect:dashboard";
		}
			  else if (extension.equals("jpeg")) {
	              Announce image = new Announce();
				  image.setProfilePicture(fileName);
				  image.setContent(file2.getBytes());
				  image.setSize(file2.getSize());			 
				  image.setText(text);
				  //date format
				  LocalDate today=LocalDate.now();
				  LocalDate yes=today.plusDays(days);
				  DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
				  String dateString = yes.format(formatter);
				  image.setDays(dateString);

				  service.createImage(image);
				  
				  redirectAttributes.addFlashAttribute("success1", "Announced Successfully");
				  return "redirect:dashboard";

		}else if (extension.equals("png")) {
            Announce image = new Announce();
			  image.setProfilePicture(fileName);
			  image.setContent(file2.getBytes());
			  image.setSize(file2.getSize());			 
			  image.setText(text);
			  //date format
			  LocalDate today=LocalDate.now();
			  LocalDate yes=today.plusDays(days);
			  DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			  String dateString = yes.format(formatter);
			  image.setDays(dateString);

			  service.createImage(image);
			  
			  redirectAttributes.addFlashAttribute("success1", "Announced Successfully");
			  return "redirect:dashboard";
		}else {
			
			 redirectAttributes.addFlashAttribute("Delete2", "Annonce Failed !!! Please Choose File");
			  return "redirect:dashboard";
		}
	 
	 
  
 }
 
 
 @GetMapping("/downloadfile2")
 public void downloadFile(@Param("id") Long id , Model model, HttpServletResponse response) throws IOException {
  Optional<Announce> temp = service.findAnnounceById(id);
  if(temp!=null) {
  Announce image = temp.get();
   response.setContentType("application/octet-stream");
   String headerKey = "Content-Disposition";
   String headerValue = "attachment; filename = "+image.getProfilePicture();
   response.setHeader(headerKey, headerValue);
   ServletOutputStream outputStream = response.getOutputStream();
   outputStream.write(image.getContent());
   outputStream.close();
  }
 }

// @GetMapping("/delete2")
// public String delete(HttpSession session,ModelMap model) {
//	 if(service.findExpiredAnnouncements().size()!=0) {	 
//		 repo.deleteAll();
//		  model.addAttribute("Delete2", " Expired...");
//		  return "index";
//	 }
//  return "index";
// }
 
 @GetMapping("/image2")
 public void showImage(@Param("id") Long id, HttpServletResponse response, Optional<Announce> student)
   throws ServletException, IOException { 
  student = service.findAnnounceById(id);
  response.setContentType("image/jpeg, image/jpg, image/png, image/gif, image/pdf,img/mp4");
  response.getOutputStream().write(student.get().getContent());
  response.getOutputStream().close();
 }
}
