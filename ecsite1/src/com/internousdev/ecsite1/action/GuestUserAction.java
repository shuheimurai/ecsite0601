package com.internousdev.ecsite1.action;

import java.util.Map;
import java.util.Random;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite1.dao.BuyItemDAO;
import com.internousdev.ecsite1.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;
public class GuestUserAction extends ActionSupport implements SessionAware{
private String loginGuestUserId;
public Map<String, Object> session;
private BuyItemDAO buyItemDAO = new BuyItemDAO();
Random rand = new Random();

	public String  execute(){
		String result = SUCCESS;
	int rndnmb = rand.nextInt();
	Integer inrnd = new Integer(rndnmb);
	String strnmb = inrnd.toString();
	setLoginGuestUserId(strnmb);
	session.put("loginGuestUserId", getLoginGuestUserId());


	BuyItemDTO buyItemDTO = buyItemDAO.getBuyItemInfo();

//	session.put("login_user_id",loginDTO.getLoginId());
	session.put("id",buyItemDTO.getIds());
	session.put("buyItem_name",buyItemDTO.getNames());
	session.put("buyItem_price", buyItemDTO.getPrices());


	return result;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}

	public String getLoginGuestUserId(){
		return loginGuestUserId;
	}
	public void setLoginGuestUserId(String loginUserId){
		this.loginGuestUserId = loginUserId;
	}

}
