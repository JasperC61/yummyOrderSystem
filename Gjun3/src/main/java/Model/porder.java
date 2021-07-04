package Model;
/* 1.製作porder class對應資料庫table porder及其欄位屬性
 * 2.傳送值與接收值
 * 
 * 
 */
public class porder {
	private Integer id;
	private String Desk;
	private Integer A;
	private Integer B;
	private Integer C;
	private Integer Sum;
	
	public porder() {
		super();
		
	}

	public porder(String desk, Integer a, Integer b, Integer c) {
		super();
		Desk = desk;
		A = a;
		B = b;
		C = c;
		
		Sum=A*120+B*130+C*140;
	}
    //賦值
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	 //賦值
	public String getDesk() {
		return Desk;
	}

	public void setDesk(String desk) {
		Desk = desk;
	}
	 //賦值
	public Integer getA() {
		return A;
	}

	public void setA(Integer a) {
		A = a;
	}
	 //賦值
	public Integer getB() {
		return B;
	}

	public void setB(Integer b) {
		B = b;
	}
	 //賦值
	public Integer getC() {
		return C;
	}

	public void setC(Integer c) {
		C = c;
	}
	 //賦值
	public Integer getSum() {
		Sum=A*120+B*130+C*140;
		return Sum;
	}

	public void setSum(Integer sum) {
		Sum = sum;
	}
	
	  
	
}