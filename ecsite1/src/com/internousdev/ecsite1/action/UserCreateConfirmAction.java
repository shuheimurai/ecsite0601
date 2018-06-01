package com.internousdev.ecsite1.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UserCreateConfirmAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String userName;
	public Map<String, Object> session;
	private String errorMessage;
	private String idErrorMessage;
	private String passErrorMessage;
	private String userErrorMessage;
	private String tempId;
	private String tempPass;
	private String tempUser;
	public String execute(){
		String result = SUCCESS;


	if(!(loginUserId.equals(""))
			&& !(loginPassword.equals(""))
			&& !(userName.equals(""))){
		session.put("loginUserId", loginUserId);
		session.put("loginPassword", loginPassword);
		session.put("userName", userName);
	}else{
		setErrorMessage("未入力の項目があります。");
		result = ERROR;
	}

	if(loginUserId.equals("")){
		setIdErrorMessage("ログインIDを入力して下さい");
	}else{
		setTempId(loginUserId);
	}

	if(loginPassword.equals("")){
		setPassErrorMessage("ログインPASSを入力してください");
	}else{
		setTempPass(loginPassword);
	}

	if(userName.equals("")){
		setUserErrorMessage("ユーザー名を入力して下さい");
	}else{
		setTempUser(userName);
	}




	return result;

}

public String getLoginUserId(){
	return loginUserId;
}

public void setLoginUserId(String loginUserId){
	 this.loginUserId = loginUserId;
}

public String getLoginPassword(){
	return loginPassword;
}

public void setLoginPassword(String loginPassword){
	this.loginPassword = loginPassword;
}

public String getUserName(){
	return userName;
}

public void setUserName(String userName){
	this.userName = userName;
}

@Override
public void setSession(Map<String, Object> session){
	this.session = session;
}

public String getErrorMessage(){
	return errorMessage;
}

public void setErrorMessage(String errorMessage){
	this.errorMessage = errorMessage;
}

public String getIdErrorMessage(){
	return idErrorMessage;
}

public void setIdErrorMessage(String idErrorMessage){
	this.idErrorMessage = idErrorMessage;
}

public String getPassErrorMessage(){
	return passErrorMessage;
}

public void setPassErrorMessage(String passErrorMessage){
	this.passErrorMessage = passErrorMessage;
}

public String getUserErrorMessage(){
	return userErrorMessage;
}

public void setUserErrorMessage(String userErrorMessage){
	this.userErrorMessage = userErrorMessage;
}

public String getTempId(){
	return tempId;
}

public void setTempId(String tempId){
	this.tempId = tempId;
}

public String getTempPass(){
	return tempPass;
}

public void setTempPass(String tempPass){
	this.tempPass = tempPass;
}

public  String getTempUser(){
	return tempUser;
}

public void setTempUser(String tempUser){
	this.tempUser = tempUser;
}

}
