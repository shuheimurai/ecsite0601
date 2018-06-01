package com.internousdev.ecsite1.dto;
import java.util.ArrayList;

public class ItemListDTO {

	private int id;
	private  String itemName;
	private String itemPrice;
	ArrayList<Integer> itemIds = new ArrayList<Integer>();
	ArrayList<String> itemNames = new ArrayList<String>();
	ArrayList<Integer> itemPrices = new ArrayList<Integer>();

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

	public ArrayList<Integer> getItemIds(){
		return itemIds;
	}

	public void setItemIds(int id){
		itemIds.add(id);
	}

	public ArrayList<String> getItemNames(){
		return itemNames;
	}

	public void setItemNames(String name){
		itemNames.add(name);
	}

	public ArrayList<Integer> getItemPrices(){
		return itemPrices;
	}

	public void setItemPrices(Integer price){
		itemPrices.add(price);
	}

}




