package com.animal.aniwhere_back.service;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class SchedulerService {

	@Scheduled(cron="*/10 * * * * *")
	public void doingScheduled() throws Exception {
		System.out.println("doingScheduled method test");
	}////////// doingScheduled
	
}//////////////////// SchedulerService class
