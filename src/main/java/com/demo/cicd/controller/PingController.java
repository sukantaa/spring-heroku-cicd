/**
 * 
 */
package com.demo.cicd.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Sukanta
 *
 */
@RestController
public class PingController {

	@GetMapping("/")
	public String home() {
        return "Pinging ....";
	}
}
