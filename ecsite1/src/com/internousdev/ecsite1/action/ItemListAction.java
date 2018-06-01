package com.internousdev.ecsite1.action;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite1.dao.ItemListDAO;
import com.internousdev.ecsite1.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;
public class ItemListAction extends ActionSupport implements SessionAware{
	ArrayList<Integer> itemIds = new ArrayList<Integer>();
	ArrayList<String> itemNames = new ArrayList<String>();
	ArrayList<Integer> itemPrices = new ArrayList<Integer>();
	ItemListDTO itemListDTO = new ItemListDTO();
	ItemListDAO itemListDAO = new ItemListDAO();
	
	ArrayList<Object> itemData = new ArrayList<Object>();

	public Map<String ,Object> session;
	public String execute(){
		String result = SUCCESS;
       
		ItemListDTO itemListDTO = itemListDAO.getItemListInfo();

//		Iterator <Integer> ids = itemListDTO.getItemIds().iterator();
//				while(ids.hasNext()){
//					int i = (int)ids.next();
//					itemIds.add(i);
//				}
//		Iterator <String> names = itemListDTO.getItemNames().iterator();
//		while(names.hasNext()){
//			String i = (String)names.next();
//			itemNames.add(i);
//		}
//
//		Iterator <Integer> prices = itemListDTO.getItemPrices().iterator();
//		while(prices.hasNext()){
//			int i = (int)prices.next();
//			itemPrices.add(i);
//		}
//
//
//		session.put("itemIds", itemIds);
//		session.put("itemNames", itemNames);
//		session.put("itemPrices", itemPrices);

	
	
		
		DataGroup dataGroup = new DataGroup();
		itemNames = itemListDTO.getItemNames();
		itemPrices = itemListDTO.getItemPrices();
		itemIds = itemListDTO.getItemIds();
		Iterator <Integer> ids = itemListDTO.getItemIds().iterator();
		int i = 0;
		while(i < 7){
			dataGroup.setItemName(itemNames.get(i));
			dataGroup.setItemPrice(itemPrices.get(i));
			dataGroup.setItemId(i);
			itemData.add(new DataGroup(itemNames.get(i),itemPrices.get(i),itemIds.get(i)));


			i += 1;
		}
		session.put("itemData" ,itemData);
			return result;
	}

public static class DataGroup{
	private String itemName;
	private int itemPrice;
	private int itemId;

	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemName){
		this.itemName = itemName;
	}

	public int getItemPrice(){
		return itemPrice;
	}

	public void setItemPrice(int itemPrice){
		this.itemPrice = itemPrice;
	}

	public int getItemId(){
		return itemId;
	}

	public void setItemId(int itemId){
		this.itemId = itemId;
	}
	public DataGroup(){}
	public DataGroup(String itemName, int itemPrice, int itemId){
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.itemId = itemId;
	}

}


@Override
public void setSession(Map<String,Object> session){
	this.session = session;
}


}
