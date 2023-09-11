package qz;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/0908qz5")
public class qz5 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String[] bookNames= {"소설" , "역사" , "인문",  "정치" , "미술" ,"종교" ,"여행", "과학"};
		req.setAttribute("books", bookNames);
		
		req.getRequestDispatcher("WEB-INF/views/qz5.jsp").forward(req, resp);
	}
	

}
