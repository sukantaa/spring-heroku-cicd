package com.demo.cicd;

import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.demo.cicd.controller.PingController;

@RunWith(SpringRunner.class)
@SpringBootTest
class CicdApplicationTests {

	@Autowired
	private PingController pingController;

	@Test
	public void contextLoads() {
		Assert.assertEquals("Pinging ....",pingController.home() );
	}

}
