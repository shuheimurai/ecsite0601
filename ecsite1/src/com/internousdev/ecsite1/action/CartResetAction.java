package com.internousdev.ecsite1.action;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import  com.opensymphony.xwork2.ActionSupport;
public class CartResetAction extends ActionSupport implements SessionAware{
	public Map<String ,Object> session;
	private String resetFlg;
	private String resetMessage;
	private int totalCount;
	public String execute(){
		String result = SUCCESS;

		session.put("resetFlg" , resetFlg);

		@SuppressWarnings("unchecked")
		ArrayList<Object> inDataList = (ArrayList<Object>)session.get("inDataList");
		inDataList.clear();
		setResetMessage("削除しました");
		session.put("inDataList", inDataList);
		setTotalCount(inDataList.size());
		session.put("totalCount" ,totalCount);
		return result;
	}


	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}

	public String getResetMessag(){
		return this.resetMessage;
	}

	public void setResetMessage(String resetMessage){
		this.resetMessage = resetMessage;
	}

	public int getTotalCount(){
		return totalCount;
	}

	public void setTotalCount(int totalCount){
		this.totalCount = totalCount;
	}


}
