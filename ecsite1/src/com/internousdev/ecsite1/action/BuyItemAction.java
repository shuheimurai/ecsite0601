package com.internousdev.ecsite1.action;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
public class BuyItemAction extends ActionSupport implements SessionAware{
public Map<String, Object> session;
private int noteCount;
private int caseCount;
private String pay;

private String errorMessage;
@SuppressWarnings("unchecked")
public String execute(){
	String result = SUCCESS;

	if(caseCount == 0 && noteCount ==0){
		result = ERROR;
		setErrorMessage("商品を選んでください");
		return result;
	}


	session.put("noteCount", noteCount);
	int intNoteCount = Integer.parseInt(session.get("noteCount").toString());
//	ArrayList<String> notePriceList = new ArrayList<String>();

//	int price = 0;
//	for(String notePrice: notePriceList){
//		 price = Integer.parseInt(notePrice);
//
//
//
//
//	}
//	notePriceList = session.get("buyItem_price");


//	Object price = session.get("buyItem_price").toString();
//	int intPrice = Integer.parseInt(price);

	int  intNotePrice = Integer.parseInt(((ArrayList<Integer>)session.get("buyItem_price")).get(0).toString());
	int intCasePrice = Integer.parseInt(((ArrayList<Integer>)session.get("buyItem_price")).get(1).toString());
	int intNoteId = Integer.parseInt(((ArrayList<Integer>)session.get("id")).get(0).toString());
	int intCaseId = Integer.parseInt(((ArrayList<Integer>)session.get("id")).get(1).toString());

	session.put("noteId", intNoteId);
	session.put("caseId", intCaseId);
	session.put("notePrice", intNotePrice);
	session.put("casePrice", intCasePrice);
	session.put("caseCount", caseCount);
	int intCaseCount = Integer.parseInt(session.get("caseCount").toString());

	session.put("total_count", intNoteCount+intCaseCount);
	session.put("total_price",(intNoteCount*intNotePrice)+(intCaseCount*intCasePrice));

	String payment;
	if(pay.equals("1")){
		payment = "現金払い";
		session.put("pay",payment);
	}else{
		payment = "クレジットカード";
		session.put("pay",payment);
	}

	if(session.get("loginGuestUserId") != null){
		result = ERROR;
		setErrorMessage("ユーザーログインしてください");
	}else{
		result = SUCCESS;

	}

	return result;

}


public void setNoteCount(int noteCount){
	this.noteCount = noteCount;
}

public void setPay(String pay){
	this.pay = pay;
}
public void setCaseCount(int caseCount){
	this.caseCount = caseCount;
}

public String getErrorMessage(){
	return errorMessage;
}

public void setErrorMessage(String errorMessage){
	this.errorMessage = errorMessage;
}

@Override
public void setSession(Map<String,Object> session){
	this.session = session;
}
}
