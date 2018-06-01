package com.internousdev.ecsite1.action;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite1.dao.MyPageDAO;
import com.internousdev.ecsite1.dto.MyPageDTO;
import com.opensymphony.xwork2.ActionSupport;


public class MyPageAction extends ActionSupport implements SessionAware{
	public Map<String, Object> session;
	private MyPageDAO myPageDAO = new MyPageDAO();
	private ArrayList<MyPageDTO> myPageNoteList = new ArrayList<MyPageDTO>();
	private ArrayList<MyPageDTO> myPageCaseList = new ArrayList<MyPageDTO>();
	private String deleteFlg;
	private String message;
	public String execute() throws SQLException{
		if(!session.containsKey("id")) {
			return ERROR;
		}
		if(deleteFlg == null){
			String item_transaction_noteId = session.get("noteId").toString();
			String item_transaction_caseId = session.get("caseId").toString();
			String user_master_id = session.get("login_user_id").toString();
			myPageNoteList = myPageDAO.getMyPageUserInfo(item_transaction_noteId,user_master_id);
			myPageCaseList = myPageDAO.getMyPageUserInfo(item_transaction_caseId,user_master_id);
		}else if(deleteFlg.equals("1")){
			delete();
		}
		

		String result =SUCCESS;
		return result;
	}
	public void delete() throws SQLException{
		String item_transaction_NoteId = session.get("noteId").toString();
		String item_transaction_CaseId = session.get("caseId").toString();
		String user_master_id = session.get("login_user_id").toString();

		int resNote = myPageDAO.buyItemHistoryDelete(item_transaction_NoteId,user_master_id);
		int resCase = myPageDAO.buyItemHistoryDelete(item_transaction_CaseId, user_master_id);

		if(resNote>0 && resCase>0){
			setMessage("商品情報を正しく削除しました。");
			myPageNoteList = null;
			myPageCaseList = null;


		}else if(resNote == 0 && resCase == 0){
			setMessage("商品情報の削除に失敗しました。");
		}
	}
	public void setDeleteFlg(String deleteFlg){
		this.deleteFlg = deleteFlg;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session = session;
	}

	public ArrayList<MyPageDTO> getMyPageNoteList(){
		return this.myPageNoteList;
	}

	public ArrayList<MyPageDTO> getMyPageCaseList(){
		return this.myPageCaseList;
	}

	public String getMessage(){
		return this.message;
	}

	public void setMessage(String message){
		this.message = message;
	}
}
