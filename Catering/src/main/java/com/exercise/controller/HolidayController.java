package com.exercise.controller;


import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.model.Holiday;
import com.exercise.repo.CustomRepository;
import com.exercise.repo.HolidayRepository;
import com.exercise.service.HolidayService;



@Controller
public class HolidayController 
{
	@Autowired
	HolidayRepository hRepo;
	@Autowired
	HolidayService hService;
	@Autowired
	  CustomRepository customRepository;
	@GetMapping("/holidayView")
    public String holidayView(ModelMap model,HttpSession session) {
		session.removeAttribute("message");
		List<Holiday> holidays= hRepo.findAll();
		model.addAttribute("holiday",holidays);
        return "HolidayView";
    }
	@GetMapping("/holidayAdd")
    public ModelAndView holidayadd() {
        return new ModelAndView("addHoliday","Holiday", new Holiday());
    }
	
	@PostMapping("/addHoliday")
	public String addHoliday(@ModelAttribute("Holiday")Holiday holi,ModelMap model,HttpSession session,RedirectAttributes redirectAttributes)
	{
		Holiday holiday = new Holiday();
		holiday.setDate(holi.getDate());
		holiday.setDay(holi.getDay());
		holiday.setHolidays(holi.getHolidays());
		Holiday holidays = hService.insertUser(holiday);
		if( holidays == null )
		{
			redirectAttributes.addFlashAttribute("message2","Insert Failed");
			return "redirect:/holidayAdd";
		}else
			redirectAttributes.addFlashAttribute("message","Insert Successfully");
		customRepository.executeNativeQueries();
		return "redirect:/holidayAdd";
	}
	
	@RequestMapping(value="deleteHoliday/{id}" , method= RequestMethod.GET )
	public String Delete(@PathVariable Long id, ModelMap model,HttpSession session)
	{
		
			int i =0;
		
			i = hService.deleteHoliday(id);
			if(i < 0) {
				session.setAttribute("message", "Delete Failed!!");
				
				return "redirect:/holidayView";
			}
			else {
				session.setAttribute("message", "Delete Successful!!");
				
				
			}
			
			return "redirect:/holidayView";
		}
	
	@PostMapping("/deleteHoliday")
    public String deleteEmployee(@RequestParam("staffId") long staffId,Principal principal) {
		int i =0;
		i = hService.deleteHoliday(staffId);
     
     System.out.println("employee staff id is "+ staffId);
     return "redirect:/holidayView";

    }
		
	@RequestMapping(value="/updateHoliday/{id}" , method= RequestMethod.GET )
	public ModelAndView setUpdate(@PathVariable Long id, ModelMap model)
	{
		
		return new ModelAndView("UpdateHoliday" , "Holiday" , hService.getHoliById(id) );
				
	}
	@RequestMapping( value="/upHoliday" , method = RequestMethod.POST)
	public String Update(@ModelAttribute("Holiday")@Validated Holiday holi,ModelMap model,HttpSession session)
	{
		Holiday holiday = new Holiday();
		holiday.setId(holi.getId());
		holiday.setDate(holi.getDate());
		holiday.setDay(holi.getDay());
		holiday.setHolidays(holi.getHolidays());
		
		int i = hService.update(holiday, holi.getId());
		if( i > 0 )
		{
			model.addAttribute("message", "Update Successful");

			return "UpdateHoliday";
		}else
		{
			model.addAttribute("message", "Update Failed");
			return "UpdateHoliday";
		}
		}
	}

