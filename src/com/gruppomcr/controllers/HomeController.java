package com.gruppomcr.controllers;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gruppomcr.services.CaniService;
//github.com/GruppoMCR/T-ARM-V1.git

@Controller
//@RequestMapping("/")
public class HomeController {
		
	private static final Log logger = LogFactory.getLog(HomeController.class);
	
	@Autowired
	private CaniService caniInterface;
	
	
		
//github.com/GruppoMCR/T-ARM-V1.git
//	@RequestMapping(value ="/home", method = RequestMethod.GET)
//	   public String homeRedirect(ModelMap model) {
//	      logger.info("controller di reindirizzamento in homepage");
//	      return "home";
//	   }
	//Look at each of these controller methods. The returned value from them is treated as tiles-view [Thanks to TilesViewResolver] and corresponding tiles-definition gets consulted.
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String homePage(ModelMap model) {
        return "home";
    }
 
    @RequestMapping(value = {"/cercaAnimali"}, method = RequestMethod.GET)
    public String productsPage(@RequestParam("")ModelMap model) {
        return "cercaAnimali";
    }
 
    @RequestMapping(value = {"/contactus"}, method = RequestMethod.GET)
    public String contactUsPage(ModelMap model) {
        return "contactus";
    }	
    @RequestMapping(value = {"/test"}, method = RequestMethod.GET)
    public String test(ModelMap model) {
        return "contactus";
    }	
}
