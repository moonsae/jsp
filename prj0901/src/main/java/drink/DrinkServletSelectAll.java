package drink;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/drink_select_all")
public class DrinkServletSelectAll extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Model
		DrinkService d = new DrinkService();
		
		ArrayList<String> list = d.getDrinkList();
		System.out.println(list);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("WEB-INF/views/drink_select_all.jsp").forward(request, response);
	}
	

}
