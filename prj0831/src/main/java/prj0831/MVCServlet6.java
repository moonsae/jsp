package prj0831;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bucket")
public class MVCServlet6 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServiceMVC6 s6 = new ServiceMVC6();
		ArrayList<BucketList> list = s6.getBlist();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("WEB-INF/views/bucketlist.jsp").forward(request, response);
	}

}
