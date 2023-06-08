package com.exercise.controller;

import java.security.Principal;
import java.sql.Time;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.dao.TimeTableRepository;
import com.exercise.dto.Employee;
import com.exercise.model.PriceInfo;
import com.exercise.model.Restaurant;
import com.exercise.model.TimeTable;
import com.exercise.repo.PriceInfoRepository;
import com.exercise.repo.RestaurantRepository;
import com.exercise.service.PriceInfoService;
import com.exercise.service.RestaurantService;
import com.exercise.service.TimeTableService;


@Controller
public class RestaurantController {
	@Autowired
	 TimeTableRepository tbRepo;
	@Autowired
	RestaurantRepository resRepo;
	@Autowired
	PriceInfoService pService;
	@Autowired
	RestaurantService service;
	@Autowired
	PriceInfoRepository pRepo;
	@Autowired
	TimeTableService tbService;
	@GetMapping("/restaurant")
    public String Restaurant(ModelMap model,HttpSession session) {
		session.removeAttribute("message");
		Restaurant res = resRepo.findInfo();
		model.addAttribute("restaurant",res);
        return "restaurant";
    }
//	@GetMapping("/addRestaurant")
//    public ModelAndView addRestaurant() {
//        return new ModelAndView("addrestaurant", "res", resRepo.findInfo());
//    }
//	@PostMapping("/addRestaurant")
//	public String addRestaurant(@ModelAttribute("res") Restaurant res,ModelMap model,HttpSession session,RedirectAttributes redirectAttributes) {	
//		Restaurant rest = new Restaurant();
//		rest.setId(1);
//		rest.setName(res.getName());
//		rest.setEmail(res.getEmail());
//		rest.setPaymentReceiveName(res.getPaymentReceiveName());
//		rest.setPhone(res.getPhone());
//		rest.setPrice(res.getPrice());
//		rest.setAddress(res.getAddress());
//		rest.setCity(res.getCity());
//		
//		int i =	service.update(rest, 1);		
//		if( i > 0 )
//		{
//			
//			redirectAttributes.addFlashAttribute("message", "New Update Sucessfully..");
//		}else
//			redirectAttributes.addFlashAttribute("message2", "Update Fail!!");
//		return "redirect:/addRestaurant";		
//			
//	}
	
	@GetMapping("/restaurants")
    public String getAllRestaurants(Model model) {
        model.addAttribute("restaurants", service.getAllRestaurant());
        return "restaurantList";
    }
	
	@GetMapping("/addRestaurant")
    public String showCreateForm(Model model) {
        model.addAttribute("restaurant", new Restaurant());
        return "restaurantForm";
    }
	@PostMapping("/createRestaurant")
    public String createRestaurant(@ModelAttribute Restaurant restaurant) {
        service.createRestaurant(restaurant);
        System.out.println("created restaurant");
        return "redirect:/restaurants";
    }
	@GetMapping("/editRestaurant/{id}")
    public String showUpdateForm(@PathVariable int id, Model model) {
        Optional<Restaurant> restaurant = service.getRestaurantById(id);
        if (restaurant.isPresent()) {
            model.addAttribute("restaurant", restaurant.get());
            return "addrestaurant";
        } else {
            return "redirect:/restaurants";
        }
    }
	@PostMapping("/updateRestaurant")
    public String updateRestaurant(@ModelAttribute Restaurant restaurant) {
        
            service.update(restaurant, restaurant.getId());
        return "redirect:/restaurants";
    }

    @GetMapping("/deleteRestaurant")
    public String deleteRestaurant(@RequestParam("staffId") int id,RedirectAttributes redirectAttributes) {
        
        Restaurant restaurant=resRepo.findByRestaurantId(id);
        restaurant.setStatus("OK");
        resRepo.save(restaurant);
        List<Restaurant> restList = resRepo.findAll();
        for (Restaurant res : restList) {
            if (res.getId() != id) {
                res.setStatus("Not OK");
                resRepo.save(res);
            }
        }
        return "redirect:/restaurants";
    }
	
	 @GetMapping("/PriceTime")
		public String priceTimeView(ModelMap model,HttpSession session) {
	    	session.removeAttribute("message");
			PriceInfo info = pRepo.findPrice();
			TimeTable tb = tbRepo.findTime();
			model.addAttribute("info",info);
			model.addAttribute("tb",tb);
			return "priceTime";
		}
	    
	
	@GetMapping("/addPrice")
    public ModelAndView addPrice(Model model) {
		model.addAttribute("restaurantList", resRepo.getAllRestaurants());		
		 return new ModelAndView("addpriceinfo","price", pRepo.findPrice());
    }
	@PostMapping("/addPriceInfo")
	public String addPriceInfo(@ModelAttribute("price") PriceInfo priceInfo,ModelMap model,RedirectAttributes redirectAttributes,HttpSession session) {	
		PriceInfo info = new PriceInfo();
		info.setId(1);
		info.setRestaurantName(priceInfo.getRestaurantName());
		info.setRestaurantPrice(priceInfo.getRestaurantPrice());
		info.setCompanyPrice(priceInfo.getCompanyPrice());
		info.setEmployeePrice(priceInfo.getEmployeePrice());
		int i =	pService.update(info, 1);	
		if( i > 0 )
		{
			
			redirectAttributes.addFlashAttribute("message", "Price Update Sucessfully..");
		}else
			redirectAttributes.addFlashAttribute("message2", "Update Fail!!");
		
			return "redirect:/addPrice";			
			
	}
	@PostMapping("/addTimeInfo")
	public String addTimeInfo(@ModelAttribute("TimeTable") TimeTable TimeTable,ModelMap model,HttpSession session,RedirectAttributes redirectAttributes) {	
			int id = 1;
			String day = TimeTable.getDate();
			Time time = TimeTable.getTime();
			int i = tbService.updateTime(day,time,id);
			if( i > 0 )
			{
				
				redirectAttributes.addFlashAttribute("message", "Time Update Sucessfully..");
			}else
				redirectAttributes.addFlashAttribute("message2", "Update Fail!!");
			return "redirect:/addTime";			
			
	}
	  @GetMapping("/addTime")
		public String addTime(ModelMap model) {
			
			return "addTime";
		}
}

