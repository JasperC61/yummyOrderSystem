package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.porderDao;
import Model.porder;


public class addPorderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public addPorderController() {
        super();
      
    }


	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    /*
     * 1.擷取session物件
     * 2.新增訂單到資料庫
     * 3.切換畫面到finish.jsp 
	 * 
	 */
		//先產生一個session
		HttpSession session=request.getSession();
		//將confirm.jsp那頁的session.setAttribute("P", p),資料接收過來,但是他的用session接收下來是object故需要轉型成porder
		porder p=(porder)session.getAttribute("P");
		 //透過Dao.porderDao中 add()方法將confirm.jsp 中(porder p=new porder(Desk,A,B,C); )p的資料放入
		new porderDao().add(p);
		//回應給網頁顯示畫面
		response.sendRedirect("finish.jsp");
	}
}
