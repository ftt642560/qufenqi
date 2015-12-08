package com.qufenqi.action;

import java.util.List;

import com.qufenqi.service.CountService;
;
public class JfreechartAction {
	private CountService countService;
	public void setCountService(CountService countService) {
		this.countService = countService;
	}
	
	public String cuntAddress(){
		List<String> addressList = countService.countAddress();
		System.out.println(addressList.size());
		return "success";
	}
}
