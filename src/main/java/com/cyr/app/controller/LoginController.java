package com.cyr.app.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cyr.app.model.ElectricityDetails;
import com.cyr.app.model.FlatBean;
import com.cyr.app.model.FloorBean;
import com.cyr.app.model.OwnerBean;
import com.cyr.app.model.ReportBean;
import com.cyr.app.model.Tenant;
import com.cyr.app.model.TenantsPayment;
import com.cyr.app.model.User;
import com.cyr.app.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/")
	public String defaultLogin(Model model){
		return "redirect:/loginpage";
	} 

	
	@RequestMapping("/loginpage")
	public String loginPage(Model model){
		return "login";
	}
	
	@RequestMapping("/homepage")
	public String homePage(Model model){
		return "home";
	}
	
	@RequestMapping("/loginuser")
	public ModelAndView loginUser(@ModelAttribute User user,Model model,HttpSession session) throws ClassNotFoundException, SQLException{
		ModelAndView mav = new ModelAndView();
		String returnTo ="";
		String loginErrorMsg="Please enter the valid username and password";
		user = loginService.findByUsernameAndPassword(user.getUsername(), user.getPassword());
		if(user!=null){
			//List<Tenant> list = loginService.getAllTenants();
			//System.out.println("TenantList ......:: " +list);
			List<Tenant> list= loginService.getTenentList();
			System.out.println("LoginUser In LoginController TenantList >>>>>>>>>>>>::"+list);
			model.addAttribute("tenantList",list);
			session.setAttribute("tenantList", list);
			returnTo= "home";
		}else{
			mav.addObject("errorMessage",loginErrorMsg);
			returnTo= "login";
		}
		mav.setViewName(returnTo);
		return mav;
	}
	
	@RequestMapping("/logout")
    public String logout(HttpSession session ) {
    System.out.println("Logout Method in LoginController");
       session.invalidate();
       return "login";
    }
	
	@RequestMapping("/registerpage")
	public String registerPage(Model model,HttpSession session){
		@SuppressWarnings("unchecked")
		List<Tenant> tenantList = (List<Tenant>) session.getAttribute("tenantList");
		List<FloorBean> floorList = loginService.getFloorList();
		System.out.println("RegisterPage  Method LoginController floorList >>>>>>>>>>>>::"+floorList);
		model.addAttribute("floorList",floorList);
		List<FlatBean> flatList = loginService.getFlatList();
		System.out.println("RegisterPage  Method LoginController flatList >>>>>>>>>>>>::"+flatList);
		model.addAttribute("flatList",flatList);
		System.out.println("RegisterPage  Method LoginController TenantList >>>>>>>>>>>>::"+tenantList);
		model.addAttribute("tenantList",tenantList);
		return "tenantRegister";
	}
	
	@PostMapping("/savetenant")
	public String saveTenant(Model model, @ModelAttribute("tenants") Tenant tenant,BindingResult result) throws ClassNotFoundException, SQLException{
		System.out.println("SaveTenant Method in LoginController");
		loginService.saveTenant(tenant);
		return "tenantRegister";
	}
	
	@RequestMapping("/rentpayment")
	public String rentPage(Model model,HttpServletRequest request){
		
		String tenantName = request.getParameter("tenantId");
		System.out.println("tenantName...........::"+tenantName);
		List<Tenant> list= loginService.getTenentList();
		System.out.println("RentPage Method LoginController In TenantList >>>>>>>>>>>>::"+list);
		model.addAttribute("tenantList",list);
		return "rentPayment";
	}
	
	@PostMapping("/saverentpayment")
	public String saveRentPayment(@ModelAttribute TenantsPayment tenantsPayment,Model model) throws ClassNotFoundException, SQLException{
		System.out.println("SaveRentPayment Method in LoginController");
		loginService.saveRentPayment(tenantsPayment);
		return "rentPayment";
	}
	
	@RequestMapping("/electricity")
	public String electricityPage(Model model,HttpSession session){
		List<Tenant> tenantList = (List<Tenant>) session.getAttribute("tenantList");
		System.out.println("ElectricityPage In LoginController TenantList >>>>>>>>>>>>::"+tenantList);
		model.addAttribute("tenantList",tenantList);
		return "electricityDetails";
	}
	
	@PostMapping("/saveelectricity")
	public String saveElectricityPayment(@ModelAttribute ElectricityDetails electricity,Model model) throws ClassNotFoundException, SQLException{
		System.out.println("SaveElectricityPayment Method in LoginController");
		loginService.saveElectricityPayment(electricity);
		return "electricityDetails";
	}
	
	@RequestMapping("/expenses")
	public String ownerPage(Model model,HttpSession session){
		List<Tenant> tenantList = (List<Tenant>) session.getAttribute("tenantList");
		System.out.println("OwnerPage In LoginController TenantList >>>>>>>>>>>>::"+tenantList);
		model.addAttribute("tenantList",tenantList);
		return "owner";
	}
	
	@PostMapping("/saveexpenses")
	public String saveOwnerPayment(@ModelAttribute OwnerBean owner,Model model) throws ClassNotFoundException, SQLException{
		System.out.println("SaveOwnerPayment Method in LoginController");
		loginService.saveOwnerPayment(owner);
		return "owner";
	}
	
	@RequestMapping("/report")
	public String reportPage(Model model,HttpSession session){
		List<Tenant> tenantList = (List<Tenant>) session.getAttribute("tenantList");
		System.out.println("ReportPage In LoginController TenantList >>>>>>>>>>>>::"+tenantList);
		model.addAttribute("tenantList",tenantList);
		return "report";
	}

	@PostMapping("/savereport")
	public String saveReportPayment(@ModelAttribute ReportBean reportBean ,Model model) throws ClassNotFoundException, SQLException{
		System.out.println("SaveOwnerPayment Method in LoginController");
		//loginService.save
		return "report";
	}
}
