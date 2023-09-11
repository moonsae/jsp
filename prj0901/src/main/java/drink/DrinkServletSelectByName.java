package drink;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/select_menu")
public class DrinkServletSelectByName extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 사용자로부터 정보 꺼내오기
		String name= request.getParameter("name");
		
		// 모델
		DrinkService ds = new DrinkService();
		
		Drink d = ds.getDrink(name);
		
		request.setAttribute("drink", d);
		request.getRequestDispatcher("WEB-INF/views/drink_select_name.jsp").forward(request, response);
	}

}
