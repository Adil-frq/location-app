package com.location.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.location.entities.Location;
import com.location.service.LocationService;

@Controller
public class LocationController {
	@Autowired
	LocationService service;
	@RequestMapping("/")
	public String showCreate() {
		
		return "location";
	}
	@RequestMapping(value = "/saveLoc" , method=RequestMethod.POST)
	public String saveLoction(@ModelAttribute("location")Location location, ModelMap map) {
		
		Location saveLocation = service.saveLocation(location);
		String msg = "Location save with id: " +saveLocation.getId();
		map.addAttribute("msg", msg);
		return "location";
	}
	@RequestMapping(value="/showAll", method=RequestMethod.GET)
	public String showAllLocations(ModelMap modelMap) {
		List<Location> locations = service.getAllLocations();
		modelMap.addAttribute("locations", locations);
		return "displayLocations";
	}
	
	@RequestMapping(value = "/deleteLoc", method=RequestMethod.GET)
	public String deleteLocation(@RequestParam("id") int id,ModelMap modelMap) {
		//Location location = service.getLocationById(id);
		Location location = new Location();
		location.setId(id);
		service.deleteLocation(location);
		List<Location> locations = service.getAllLocations();
		modelMap.addAttribute("locations", locations);
		return "displayLocations";
	}
	
	@RequestMapping(value = "/updateLoc" ,method=RequestMethod.GET)
	public String showUpdateLocation(@RequestParam("id") int id, ModelMap modelMap) {
		Location location = service.getLocationById(id);
		modelMap.addAttribute("location", location);
		return "editLocation";
	}
	
	@RequestMapping(value="/updateLocation")
	public String updateLocation(@ModelAttribute("location") Location location, ModelMap modelMap) {
		service.updateLocation(location);
		List<Location> locations = service.getAllLocations();
		modelMap.addAttribute("locations", locations);
		return "displayLocations";
	}
 }


