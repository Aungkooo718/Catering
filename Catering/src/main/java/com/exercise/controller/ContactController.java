package com.exercise.controller;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.model.contact;
import com.exercise.repo.ContactRepository;
import com.exercise.service.ContactService;
import com.exercise.service.MailService;



@Controller
public class ContactController {
  

  @Autowired
  ContactService cService;
  @Autowired
  MailService mService;
  public ContactController(ContactService contactService, MailService mailService) {
	// TODO Auto-generated constructor stub
	  this.cService = contactService;
	  this.mService = mailService;
}
@PostMapping("/contact")
  public String sendEmail(@RequestParam("email") String email, 
                          @RequestParam("phone") String phone,
                          @RequestParam("address") String address,ModelMap model,HttpSession session,RedirectAttributes ra
                        ) throws MessagingException {
  
  int i =cService.updateTime(email, phone, address,1);
  if( i > 0 )
  {
	  ra.addFlashAttribute("success", "Save Successful!");
	  return "redirect:/viewProfile";
  }else
	  ra.addFlashAttribute("errorMessage", "Save Fail!");
  
     return "redirect:/viewProfile";

  }
  @PostMapping("/mailSetting")
  public String sendMail(@RequestParam("mail") String mail, 
                          @RequestParam("pass") String pass,ModelMap model,RedirectAttributes ra
                        ) throws MessagingException {
  
  int i =mService.updateTime(mail, pass, 1);
  if( i > 0 )
  {
	  ra.addFlashAttribute("success", "Save Successful!");
	  return "redirect:/viewProfile";
  }else
	  ra.addFlashAttribute("errorMessage", "Save Fail!");
  
     return "redirect:/viewProfile";
}
}