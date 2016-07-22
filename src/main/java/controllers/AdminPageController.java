package controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by david.petrosyan on 7/21/2016.
 */
@RestController
@RequestMapping(value = "/adminPage.htm")
public class AdminPageController {

	@RequestMapping(method = RequestMethod.GET)
	public void handleGet() {
		System.out.println("----doPost----");
	}

}
