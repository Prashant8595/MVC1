package com.mvc.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	
	@RequestMapping("/home")  
	public String redirect(Model model /* how to send data from controler to viewpage */)  
    {  
		System.out.println("This is home ");
		model.addAttribute("name","nishant kumar");
		model.addAttribute("id",1234);
		List<String> friendStrings=new ArrayList();
		friendStrings.add("Rohan");
		friendStrings.add("Sohan");
		friendStrings.add("Shyam");
		friendStrings.add("Ram");
		
		model.addAttribute("f",friendStrings);
        return "home";  
    }     
	@RequestMapping("/about")  
	public String display()  
	{  
		System.out.println("this is about");
	    return "viewpage";  
	}  
	
	
//	how to use modelandview
	@RequestMapping("/help")
	public ModelAndView help() {
		
		System.out.println("This is help page");
		//creating modelandview object
		ModelAndView modelAndView=new ModelAndView();
		//setting the data
		modelAndView.addObject("name","Uttam");
		modelAndView.addObject("rollnumber",123422);
		
		
		modelAndView.addObject("time",LocalDateTime.now());
		//setting the view name
		modelAndView.setViewName("help");
		
		return modelAndView;
		
	}

}
