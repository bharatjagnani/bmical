package com.techroli.bmi;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BmiCalculatorController {

	@RequestMapping(value="/" ,method = RequestMethod.GET)
	public String entry(Model model){
		System.out.println("at here");
		return "bmiCalculator";
	}
}
