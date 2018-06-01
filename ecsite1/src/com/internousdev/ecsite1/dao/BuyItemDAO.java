package com.internousdev.ecsite1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ecsite1.dto.BuyItemDTO;
import com.internousdev.ecsite1.util.DBConnector;
public class BuyItemDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private BuyItemDTO buyItemDTO = new BuyItemDTO();

	public BuyItemDTO getBuyItemInfo(){
		String sql = "SELECT id, item_name, item_price FROM item_info_transaction";
		try{
			//ステートメントを作成
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()){
				buyItemDTO.setIds(resultSet.getInt("id"));
				buyItemDTO.setNames(resultSet.getString("item_name"));
				buyItemDTO.setPrices(resultSet.getInt("item_price"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return buyItemDTO;
	}
	public BuyItemDTO getBuyItemDTO(){
		return buyItemDTO;
	}
}
