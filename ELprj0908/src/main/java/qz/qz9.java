package qz;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/0908qz9")
public class qz9 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession s=req.getSession();
		s.setAttribute("qzid", "ddd");
		//s.invalidate();
		
		req.getRequestDispatcher("WEB-INF/views/qz9.jsp").forward(req, resp);
	}

}
