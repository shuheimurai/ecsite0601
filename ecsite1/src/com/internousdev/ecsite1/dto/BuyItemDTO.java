package com.internousdev.ecsite1.dto;

import java.util.ArrayList;
public class BuyItemDTO {
	public int id;
	public String itemName;
	public String itemPrice;
	ArrayList<Integer> ids = new ArrayList<Integer>();
	ArrayList<String> names = new ArrayList<String>();
	ArrayList<Integer> prices = new ArrayList<Integer>();

	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemName){
		this.itemName = itemName;
	}

	public String getItemPrice(){
		return itemPrice;
	}
	public void setItemPrice(String itemPrice){
		this.itemPrice = itemPrice;
	}

	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}

	public ArrayList<Integer> getIds(){
		return ids;
	}

	public void setIds(int id){
		ids.add(id);
	}

	public ArrayList<String> getNames(){
		return names;
	}

	public void setNames(String name){
		names.add(name);
	}

	public ArrayList<Integer> getPrices(){
		return prices;
	}

	public void setPrices(Integer price){
		prices.add(price);
	}

}
