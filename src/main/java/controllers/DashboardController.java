package controllers;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by david.petrosyan on 7/22/2016.
 */
@RestController
@RequestMapping(value = "/dashboard.htm")
public class DashboardController {

	@RequestMapping(method = RequestMethod.GET)
	public void handleGet() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		String username;
		if (principal instanceof UserDetails) {
			username = ((UserDetails)principal).getUsername();
		} else {
			username = principal.toString();
		}
		System.out.println("----doPost----");
		System.out.println(username);
	}


}
