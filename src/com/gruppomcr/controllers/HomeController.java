package com.gruppomcr.controllers;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
		
	private static final Log logger = LogFactory.getLog(HomeController.class);
	
	@RequestMapping(value ="/home", method = RequestMethod.GET)
	   public String homeRedirect(ModelMap model) {
	      logger.info("controller di reindirizzamento in homepage");
	      return "home";
	   }
		
}
