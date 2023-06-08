package com.exercise;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;


import com.exercise.model.mailSetting;
import com.exercise.repo.MailRepository;

@Configuration
public class MailConfig {
	@Autowired
	MailRepository mRepo;

   @Value("${spring.mail.host}")
   private String host;

   @Value("${spring.mail.port}")
   private int port;



   @Bean
   public JavaMailSender javaMailSender() {
       JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
       mailSetting mail = mRepo.findMail();
       mailSender.setHost(host);
       mailSender.setPort(port);
       mailSender.setUsername(mail.getMail());
       mailSender.setPassword(mail.getPass());

       Properties props = mailSender.getJavaMailProperties();
       props.put("mail.transport.protocol", "smtp");
       props.put("mail.smtp.auth", "true");
       props.put("mail.smtp.starttls.enable", "true");
       props.put("mail.debug", "true");

       return mailSender;
   }
}


