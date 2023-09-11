package acorn;

import java.io.IOException;

import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/food4")
public class FoodServlet4 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// json 관련라이브러리 
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		FoodService service = new FoodService();
		//JSONObject o =service.getFoodInfo();
		JSONArray arr = service.getFoodList();
        //resp.getWriter().println(o);
		resp.getWriter().println(arr);
		
	}

}
