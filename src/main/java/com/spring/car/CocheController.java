package com.spring.car;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.model.Coche;
import com.spring.service.CarService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/")
public class CocheController {
	
	@Autowired
	CarService carService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String findAllCars( Model model) {		
		
			model.addAttribute("cars", carService.getCars());
			return "listar";		
            }
	@GetMapping(value="/add")
	  public String formADD(Model model)
	  {
		model.addAttribute("car", new Coche());
		return "crear";
	  }

	@PostMapping(value="/add")
	public String addCar (Coche car){
		System.out.println("car :" + car.getMatricula());
		carService.saveCar(car);
		return "redirect:/";
	}
	@GetMapping("/edit/{matricula}")
	public String updateCar(@Valid @ModelAttribute("car") Coche car, BindingResult result, @PathVariable String matricula, Model model)
	{
	
   if (result.hasErrors()){
		return "editar";
	}
	else {
		carService.saveCar(car);
	}
	return "redirect:/";
}
	
}
