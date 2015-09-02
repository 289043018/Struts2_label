package com.hand.action;

import com.hand.POJO.Users;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	
	private Users us;
	@Override
	public String execute() throws Exception {
		System.out.println(us.getUsername());
		System.out.println(us.getPassword());
		return SUCCESS;
	}
	public Users getUs() {
		return us;
	}
	public void setUs(Users us) {
		this.us = us;
	}
	
}
