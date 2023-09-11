package prj0831;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/movieinfo")
public class MVCServlet7 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServiceMVC7 s7 = new ServiceMVC7();
		ArrayList<Movie> list = s7.getList();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("WEB-INF/views/movielist.jsp").forward(request, response);
	}

}
