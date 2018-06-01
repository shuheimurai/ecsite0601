package com.internousdev.ecsite1.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
public class InquiryConfirmAction extends ActionSupport implements SessionAware{
private String name;
private String tel;
private String text;
private String message;
public Map<String , Object> session;
	public String execute(){
		String result = SUCCESS;


			session.put("name", name);
			session.put("tel", tel);
			session.put("text", text);



		return result;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}

	public String getName(){
		return name;
	}

	public void setName(String name){
		this.name = name;
	}

	public String getTel(){
		return tel;
	}

	public void setTel(String tel){
		this.tel = tel;
	}

	public String getText(){
		return text;
	}

	public void setText(String text){
		this.text = text;
	}

	public String getMessage(){
		return message;
	}

	public void setMessage(String message){
		this.message= message;
	}
}
