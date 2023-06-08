package com.exercise.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.Employee;
import com.exercise.model.Feedback;
import com.exercise.repo.FeedbackRepository;
import com.exercise.service.FeedbackService;

@Controller
public class FeedbackController {
	@Autowired
	FeedbackService feedbackService;
	@Autowired
	EmployeeRepository EmpRep;
	@Autowired
    private FeedbackRepository feedbackRepository;
	
//	@PostMapping("/addFeedback")
//	public String addFeedback(@RequestParam("feedback") String  feedbackOfEmp,ModelMap model,Principal principal) {	
//			Feedback feedback=new Feedback();
//		feedback.setEmployeeName(principal.getName());
//			Employee emp=EmpRep.findByEmail(principal.getName());
//			feedback.setEmployeeName(emp.getName());
//			feedback.setEmployeeId(emp.getStaffId());
//			feedback.setFeedback(feedbackOfEmp);
//			feedbackService.saveFeedback(feedback);
//			model.addAttribute("feedback", "Thank you for your feedback..");	
//			return "addRestaurant";
//			
//	}
	
	@PostMapping("/addFeedback")
	public String addFeedback(@RequestParam(name = "feedback") String feedbackOfEmp,
	                          @RequestParam(name = "lunchregist", required = false) String lunchRegist,
	                          @RequestParam(name = "dashboard", required = false) String dashboard,
	                          @RequestParam(name = "review", required = false) String review,
	                          @RequestParam(name = "about", required = false) String about,
	                          @RequestParam(name = "doorlog", required = false) String doorlog,
	                          @RequestParam(name = "avoidmeat", required = false) String avoidmeat,
	                          @RequestParam(name = "holiday", required = false) String holiday,
	                          @RequestParam(name = "addavoidmeat", required = false) String addavoidmeat,
	                          @RequestParam(name = "updateAvoidMeat", required = false) String updateAvoidMeat,
	                          @RequestParam(name = "addholiday", required = false) String addholiday,
	                          @RequestParam(name = "employee", required = false) String employee,
	                          @RequestParam(name = "updateHoli", required = false) String updateHoli,
	                          @RequestParam(name = "id", required = false) String id,
	                          @RequestParam(name = "lunchinfo", required = false) String lunchinfo,
	                          @RequestParam(name = "registereat", required = false) String registereat,
	                          ModelMap model, Principal principal,RedirectAttributes ra) {
		
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && dashboard != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/dashboard";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && registereat != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/dashboard";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && lunchinfo != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/lunchInfo";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && updateHoli != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/holidayView";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && employee != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/employees";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && addholiday != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/holidayAdd";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && updateAvoidMeat != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			ra.addAttribute("id", id);
			return "redirect:/updateMeat/{id}";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && addavoidmeat != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/AvoidMeatAdd";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && holiday != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/holidayView";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && avoidmeat != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/avoidMeat";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && lunchRegist != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/register";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && review != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/review";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && about != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/about";
		}
		if(feedbackOfEmp==null || feedbackOfEmp.isEmpty() && doorlog != null) {
			ra.addFlashAttribute("Delete", "Please fill the feedback..");
			return "redirect:/doorlog";
		}
		
	    Feedback feedback = new Feedback();

	    LocalDate currentDate=LocalDate.now();
	    feedback.setEmployeeName(principal.getName());
	    Employee emp = EmpRep.findByEmail(principal.getName());
	    feedback.setEmployeeName(emp.getName());
	    feedback.setEmployeeId(emp.getStaffId());
	    feedback.setFeedback(feedbackOfEmp);
	    feedback.setDate(currentDate);
	    feedbackService.saveFeedback(feedback);
	    ra.addFlashAttribute("success", "Thank you for your feedback..");

	    // Check if the "lunchregist" parameter is null or not   holiday
	    if (lunchRegist != null) {
	    	return "redirect:/register";
	    } 
	    if(addholiday != null) {
	    	return "redirect:/holidayAdd";
	    }
	    if (updateAvoidMeat != null) {
	    	ra.addAttribute("id", id);
	    	return "redirect:/updateMeat/{id}";
	    } 
	    if (updateHoli != null) {
	    	return "redirect:/holidayView";
	    } 
	    if (holiday != null) {
	    	return "redirect:/holidayView";
	    } 
	    if (addavoidmeat != null) {
	    	return "redirect:/AvoidMeatAdd";
	    } 
	    if(dashboard!=null) {
	    	return "redirect:/dashboard";
	    }
	    if(avoidmeat!=null) {
	    	return "redirect:/avoidMeat";
	    }
	    if(lunchinfo!=null) {
	    	return "redirect:/lunchInfo";
	    }
	    if(review!=null) {
	    	return "redirect:/review";
	    }
	    if(employee!=null) {
	    	return "redirect:/employees";
	    }
	    if(about!=null) {
	    	return "redirect:/about";
	    }
	    if(doorlog!=null) {
	    	return "redirect:/doorlog";
	    }

	    return "addRestaurant";
	}

	
	@GetMapping("/feedback")
    public String getFeedbackList(Model model) {
        List<Feedback> feedbackList = feedbackRepository.findAll();
        model.addAttribute("feedbackList", feedbackList);
        return "feedbacklist";
    }
}
