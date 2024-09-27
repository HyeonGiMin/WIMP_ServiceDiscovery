package com.wimp.servicediscovrey;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class ServicediscovreyApplication {

	public static void main(String[] args) {
		SpringApplication.run(ServicediscovreyApplication.class, args);
	}

}
