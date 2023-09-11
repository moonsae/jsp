package qz;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/0908qz4")
public class qz4 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String[] fruits = {"사과","바나나",	"자두","복숭아","딸기"};
		
		req.setAttribute("fruits", fruits);
		req.getRequestDispatcher("WEB-INF/views/qz4.jsp").forward(req, resp);
	}

}
