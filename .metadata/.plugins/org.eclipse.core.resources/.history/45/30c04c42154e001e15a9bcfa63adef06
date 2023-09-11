package qz;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/0908qz8")
public class qz8 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ArrayList<Coffee> list = new ArrayList<>();
		list.add(new Coffee("c001","아메리카노",2000));
		list.add(new Coffee("c002","카푸치노",4000));
		list.add(new Coffee("c003","카페라떼",3000));
		
		req.setAttribute("coffee", list);
		req.getRequestDispatcher("WEB-INF/views/qz8.jsp").forward(req, resp);
	}

}
