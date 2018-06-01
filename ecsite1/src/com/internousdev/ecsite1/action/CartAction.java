package com.internousdev.ecsite1.action;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite1.action.ItemListAction.DataGroup;
import com.opensymphony.xwork2.ActionSupport;
public class CartAction extends ActionSupport implements SessionAware{
	public Map<String, Object> session;
	private String itemName;
	private int itemPrice;
	private int itemId;
	private int totalCount;
	public  DataGroup dataGroup = new DataGroup();
	ArrayList<Object> cartData = new ArrayList<Object>();
	private String price;
	private String cartItemName;
	private String cartItemPrice;
	private String message;
	private String num;
	private String name;
	private String inItemName;
	private String inItemPrice;
	private String cartAddMessage;
	public String suuji;
	private String resetFlg;
	private String inMessage;
	private String text;



	@SuppressWarnings("unchecked")
	public String execute (){

		String result = SUCCESS;

//		if(resetFlg == null){
//			setInMessage("入ってないよ");
//		}else{
//			setInMessage("はいった");
//		}




//   	    setCartItemName(cartItemName);
//	    cartItemName = getCartItemName();
//	    setCartItemPrice(cartItemPrice);
//	    cartItemPrice = getCartItemPrice();
//
//	    ArrayList<Object> cart = (ArrayList<Object>)session.get("cart");
//        if(cart == null){
//	      cart = new ArrayList<Object>();
//	      cart.add(new cartData(cartItemName, cartItemPrice));
//	      session.put("cart", cart);
//	      return result;
//        }
//
//	     cart.add(new cartData(cartItemName, cartItemPrice));
//         session.put("cart", cart);
//         return result;
//			setNum(num);
//			num = getNum();
//			setName(name);
//			name = getName();
//
//			ArrayList<Object> dataList = (ArrayList<Object>)session.get("dataList");
//			if(dataList == null){
//				dataList = new ArrayList<Object>();
//				dataList.add(new data(num, name));
//				session.put("dataList", dataList);
//				setMessage("i");
//				return result;
//			}
//
//			dataList.add(new data(num, name));
//			session.put("dataList", dataList);
//			return result;







         setInItemName(cartItemName);
         cartItemName = getInItemName();
         setInItemPrice(cartItemPrice);
         cartItemPrice = getInItemPrice();

         ArrayList<Object> inDataList = (ArrayList<Object>)session.get("inDataList");
         if(inDataList == null){
        	 inDataList = new ArrayList<Object>();
        	 inDataList.add(new inData(inItemName, inItemPrice));
        	 session.put("inDataList", inDataList);
        	 setMessage("一回目の処理");
        	 setCartAddMessage("商品を追加しました");
        	 setTotalCount(inDataList.size());
        	 session.put("totalCount" , totalCount);
        	 session.put("totalCount", totalCount);
        	 return result;
         }

         inDataList.add(new inData(inItemName, inItemPrice));
         session.put("inDataList", inDataList);
         setCartAddMessage("商品を追加しました");
         setTotalCount(inDataList.size());
         session.put("totalCount", totalCount);
         setMessage("二回目以降の処理");
         return result;





         	}

		public void cartReset(){
		@SuppressWarnings("unchecked")
		ArrayList<Object> inDataList = (ArrayList<Object>)session.get("inDataList");
		inDataList.clear();
		setTotalCount(0);
		setCartAddMessage("カートを初期化しました");
		}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}


	public String getMessage(){
		return message;
	}

	public void setMessage(String message){
		this.message = message;
	}


	public String getCartItemName(){
		return this.cartItemName;
	}

	public void setCartItemName(String cartItemName){
		this.cartItemName = cartItemName;
	}

	public String getCartItemPrice(){
		return this.cartItemPrice;
	}

	public void setCartItemPrice(String cartItemPrice){
		this.cartItemPrice = cartItemPrice;
	}

    public String getNum(){
    	return this.num;
    }

    public void setNum(String num){
    	this.num  = num;
    }

    public String getName(){
    	return this.name;
    }

    public void setName(String name){
    	this.name = name;
    }

    public String getInItemName(){
    	return this.inItemName;
    }

    public void setInItemName(String inItemName){
    	this.inItemName = inItemName;
    }

    public String getInItemPrice(){
    	return this.cartItemPrice;
    }

    public void setInItemPrice(String inItemPrice){
    	this.inItemPrice = inItemPrice;
    }

    public String getCartAddMessage(){
    	return this.cartAddMessage;
    }

    public void setCartAddMessage(String cartAddMessage){
    	this.cartAddMessage  = cartAddMessage;
    }

    public int getTotalCount(){
    	return this.totalCount;
    }

    public void setTotalCount(int totalCount){
    	this.totalCount = totalCount;
    }

    public String getInMessage(){
    	return this.inMessage;
    }

    public void setInMessage(String inMessage){
    	this.inMessage = inMessage;
    }

    public String getResetFlg(){
    	return this.resetFlg;
    }

    public void setResetFlg(String resetFlg){
    	this.resetFlg = resetFlg;
    }



	public class cartData{
		private String submitName;
		private String submitPrice;

		public String getSubmitName(){
			return this.submitName;
		}

		public void setSubmitName(String submitName){
			this.submitName = submitName;
		}

		public String getSubmitPrice(){
			return this.submitPrice;
		}

		public void setSubmitPrice(String submitPrice){
			this.submitPrice = submitPrice;
		}

		public cartData(String submitName, String submitPrice){
			this.submitName = submitName;
			this.submitPrice = submitPrice;
		}

	}
	public class data{
		private String num;
		private String name;

		public String getNum(){
			return this.num;
		}

		public void setNum(String num){
			this.num = num;
		}

		public String getName(){
			return this.name;
		}

		public void setName(String name){
			this.name = name;
		}

		public data(String num, String name){
			this.num = num;
			this.name = name;
		}

	}

	public class inData{
		private String inName;
		private String inPrice;

		public String getInName(){
			return this.inName;
		}

		public void setInName(String inName){
			this.inName = inName;
		}

		public String getInPrice(){
			return this.inPrice;
		}

		public void setInPrice(String inPrice){
			this.inPrice = inPrice;
		}

		public inData(String inName, String inPrice){
			this.inName = inName;
			this.inPrice = inPrice;
		}

	}

}

//if(cartItemName == ""){
//	  setMessage("買い物籠に入れよ");
//
//}
//if(((ArrayList<Object>)session.get("cart")).size() != 0){
//ArrayList<Object> cart = (ArrayList<Object>)session.get("cart");
//setCartItemName(cartItemName);
//cartItemName = getCartItemName();
//setCartItemPrice(cartItemPrice);
//cartItemPrice = getCartItemPrice();
//
//cartData submitData = new cartData(cartItemName, cartItemPrice);
//cart.add(submitData);
//session.put("cart", cart);
//setMessage("煮込め以降");
//return result;
//
//}