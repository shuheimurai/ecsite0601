package com.internousdev.ecsite1.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
public class LogoutAction extends ActionSupport implements SessionAware{
	public Map<String, Object> session;

	public String execute(){


	session.remove("id");



	String result = SUCCESS;

	return result;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
}


