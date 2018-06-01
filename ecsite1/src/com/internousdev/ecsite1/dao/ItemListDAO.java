package com.internousdev.ecsite1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ecsite1.dto.ItemListDTO;
import com.internousdev.ecsite1.util.DBConnector;
public class ItemListDAO {
 private DBConnector dbConnector = new DBConnector();
 private Connection con = dbConnector.getConnection();
 private ItemListDTO itemListDTO = new ItemListDTO();

 public ItemListDTO getItemListInfo(){
	 String sql = "SELECT id, item_name, item_price FROM item_info_transaction";
	 try{
		 PreparedStatement ps  = con.prepareStatement(sql);
		 ResultSet rs = ps.executeQuery();
		 while(rs.next()){
				itemListDTO.setItemIds(rs.getInt("id"));
				itemListDTO.setItemNames(rs.getString("item_name"));
				itemListDTO.setItemPrices(rs.getInt("item_price"));
		 }
	 }catch (Exception e){
		 e.printStackTrace();
	 }
	 return itemListDTO;
 }


}


