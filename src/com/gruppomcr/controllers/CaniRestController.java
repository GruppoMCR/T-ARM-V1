package com.gruppomcr.controllers;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.gruppomcr.animali.dao.Cane;
import com.gruppomcr.animali.service.CaniService;

@RestController
public class CaniRestController {
	 
	@Autowired
	CaniService caniService; 
	
	private static final Log logger = LogFactory.getLog(CaniRestController.class);
	//Recupera tutti i cani 
    
    @RequestMapping(value = "/gestioneCani/", method = RequestMethod.GET)
    public ResponseEntity<List<Cane>> listTuttiICani() {
    	logger.debug("#TEST# Entering listTuttiICani()");
        List<Cane> users = caniService.recuperaTuttiCani();
        if(users.isEmpty()){
            return new ResponseEntity<List<Cane>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Cane>>(users, HttpStatus.OK);
    }
    
//	@RequestMapping(value = "/gestioneCani/", method = RequestMethod.POST)
//	public ResponseEntity<Void> createUser(@RequestBody Cane cane, UriComponentsBuilder ucBuilder) {
//		System.out.println("Creating User " + cane.getNome());
//
//		if (caniService.cercaAnimale(cane.getId())) {
//			System.out.println("Un cane con nome: " + cane.getNome() + " esiste già");
//			return new ResponseEntity<Void>(HttpStatus.CONFLICT);
//		}
//
//		caniService.salvaCane(cane);
//
//		HttpHeaders headers = new HttpHeaders();
//		headers.setLocation(ucBuilder.path("/gestioneCani/creazione/{id}").buildAndExpand(cane.getId()).toUri());
//		return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
//	}
	 
}
