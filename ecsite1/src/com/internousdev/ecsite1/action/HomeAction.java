package com.internousdev.ecsite1.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite1.dao.BuyItemDAO;
import com.internousdev.ecsite1.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware{
	public Map<String, Object> session;

	public String execute(){
		String result = "login";
		if(session.containsKey("id")){
			BuyItemDAO buyItemDAO = new BuyItemDAO();
			BuyItemDTO buyItemDTO = buyItemDAO.getBuyItemInfo();
			session.put("id", buyItemDTO.getIds());
			session.put("buyItem_name", buyItemDTO.getNames());
			session.put("buyItem_price", buyItemDTO.getPrices());
			result = SUCCESS;
		}
		return result;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
	public Map<String, Object> getSession(){
		return this.session;
	}

}