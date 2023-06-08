package com.exercise.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

import com.exercise.model.AvoidMeat;
import com.exercise.model.Holiday;
import com.exercise.repo.*;
import com.exercise.service.AvoidMeatService;


@Controller
public class avoidMeatController {
	@Autowired
	  AvoidMeatRepository avoidMeatRepo;
	@Autowired
	AvoidMeatService AvoidService;
//	@GetMapping("/avoidMeat")
//	public String addAvoidMeat() {
//		
//		return "addavoidmeat";
//	}
	@GetMapping("/avoidMeat")
    public String avoidMeat(Model model,HttpSession session) {
		List<AvoidMeat> list=avoidMeatRepo.SelectAll();
		session.removeAttribute("message");
		model.addAttribute("avoid",list);
		return "AvoidMeat";
    }
	@GetMapping("/AvoidMeatAdd")
    public ModelAndView AvoidMeatAdd(HttpSession session) {
		
		AvoidMeat av= new AvoidMeat();
		int count=AvoidService.getCount();
		av.setId(count + 1);
        return new ModelAndView("addavoidmeat", "avoid", av);
    }
	@PostMapping("/AvoidMeatAddAfter")
    public String AvoidMeatAddAfter(@ModelAttribute("avoid") AvoidMeat avoid,ModelMap model,HttpSession session,RedirectAttributes redirectAttributes) {
		AvoidMeat s=AvoidService.Save(avoid);
		if( s == null)
		{
			redirectAttributes.addFlashAttribute("message2", "Insert Failed!!");
			 return "redirect:/AvoidMeatAdd";
		}else
			redirectAttributes.addFlashAttribute("message", "Insert Successfully");
        return "redirect:/AvoidMeatAdd";
    }
	
//	@RequestMapping(value="deleteMeat" , method= RequestMethod.GET )
//	public String Delete(@RequestParam("staffId") int id, ModelMap model,HttpSession session)
//	{
//		
//			int i =0;
//		
//			i = AvoidService.softDelete(id);
//			if(i < 0) {
//				model.addAttribute("message", "Delete Failed!!");
//				
//				return "redirect:/avoidMeat";
//			}
//			else {
//				model.addAttribute("message", "Delete Successful!!");
//				
//				
//			}
//			
//			return "redirect:/avoidMeat";
//		}
	
	@RequestMapping(value="/updateMeat/{id}" , method= RequestMethod.GET )
	public ModelAndView setUpdate(@PathVariable int id, ModelMap model)
	{
		model.addAttribute("id", id);
		return new ModelAndView("UpdateAdvoidMeat" , "avoid" ,AvoidService.getMeatById(id) );
				
	}
	@RequestMapping( value="/update" , method = RequestMethod.POST)
	public String Update(@ModelAttribute("avoid")@Validated AvoidMeat avoid,ModelMap model,HttpSession session,RedirectAttributes redirectAttributes)
	{
		AvoidMeat avoidmeat = new AvoidMeat();
		avoidmeat.setId(avoid.getId());
		avoidmeat.setName(avoid.getName());
		
		int i = AvoidService.update(avoidmeat, avoid.getId());
		if( i > 0 )
		{
			model.addAttribute("message", "Update Successfully");
			
			return "UpdateAdvoidMeat";
		}else
		{
			model.addAttribute("message2", "Update Failed");
			return "UpdateAdvoidMeat";
		}
		}
	@PostMapping("/deleteMeat")
    public String deleteEmployee(@RequestParam("staffId") int staffId,Principal principal,ModelMap model) {
		int i =0;
		
		i = AvoidService.softDelete(staffId);
		if(i < 0) {
			model.addAttribute("message", "Delete Failed!!");
			
			return "redirect:/avoidMeat";
		}
		else {
			model.addAttribute("message", "Delete Successful!!");
			
			
		}
		
		return "redirect:/avoidMeat";

    }
	}

		

