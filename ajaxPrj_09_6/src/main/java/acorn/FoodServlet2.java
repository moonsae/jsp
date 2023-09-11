package acorn;

import java.io.IOException;

import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/food2")
public class FoodServlet2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// json 관련라이브러리 
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		Food food = new Food("볶음밥","6000");
		JSONObject o = new JSONObject();
		o.put("name",food.getName());
		o.put("price",food.getPrice());
		
		resp.getWriter().println(o);
		
		
	}

}
