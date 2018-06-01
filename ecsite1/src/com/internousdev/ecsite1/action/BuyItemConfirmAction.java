package com.internousdev.ecsite1.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite1.dao.BuyItemCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;
	private BuyItemCompleteDAO buyItemCompleteDAO = new BuyItemCompleteDAO();
	public String execute() throws SQLException{

//		buyItemCompleteDAO.buyItemInfo(
//				session.get("id").toString(),
//				session.get("login_user_id").toString(),
//				session.get("total_price").toString(),
//				session.get("total_count").toString(),
//				session.get("pay").toString());
//		String result = SUCCESS;
//		return result;
//
//		}
if(	!(Integer.parseInt(session.get("noteCount").toString()) == 0)){
	buyItemCompleteDAO.buyItemInfo(

			session.get("noteId").toString(),
			session.get("login_user_id").toString(),
			session.get("notePrice").toString(),
			session.get("noteCount").toString(),
			session.get("pay").toString());
}

if( !(Integer.parseInt(session.get("caseCount").toString()) == 0)){
	buyItemCompleteDAO.buyItemInfo(

			session.get("caseId").toString(),
			session.get("login_user_id").toString(),
			session.get("casePrice").toString(),
			session.get("caseCount").toString(),
			session.get("pay").toString());
}

	String result = SUCCESS;
	return result;
}






	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}
}
