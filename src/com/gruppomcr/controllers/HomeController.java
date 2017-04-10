package com.gruppomcr.controllers;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gruppomcr.services.CaniService;
//github.com/GruppoMCR/T-ARM-V1.git

@Controller
@RequestMapping("/")
@ComponentScan("com.gruppomcr.controllers")
public class HomeController {
		
	private static final Log logger = LogFactory.getLog(HomeController.class);
	
//	@Autowired
//	private CaniService caniInterface;
	
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String homePage(ModelMap model) {
		System.out.println("#TEST# HOME Mapping");
        return "index";
    }
 
    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String loginPage(ModelMap model) {
    	System.out.println("#TEST# LOGIN Mapping");
        return "login";
    }
 
    @RequestMapping(value = {"/contacti_email"}, method = RequestMethod.GET)
    public String contactUsPage(ModelMap model) {
    	System.out.println("#TEST# CONTATTI_EMAIL Mapping");
        return "contatti_email";
    }	
//    @RequestMapping(value = {"/test"}, method = RequestMethod.GET)
//    public String test(@RequestParam("nomeAnimale") String nomeAnimale,
//			    		@RequestParam("razzaAnimale") String razza,
//			    		@RequestParam("selezionaSesso") String sesso) {
//    	
//    	logger.debug("test() ------ inizio");
//    	ModelAndView mv = new ModelAndView();
//    	List<CaniPojo> listaCaniFiltrata = caniInterface.recuperaListaCani(nomeAnimale, razza, sesso);
//    	
//    	mv.addObject("listaCani", listaCaniFiltrata);
//    	mv.setViewName("cercaAnimali");
//    	logger.debug("test() ------ fine");
//        return "RisultatiRicerca";
//    }	
}
