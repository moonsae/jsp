package prj0901;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 웹에서 요청이 들어오면 --> 디비에 등록될 수 있도록
@WebServlet("/del")
public class AcornServletDel extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		
		AcornService a = new AcornService();
		
		a.deleteMember(id);
		
		ArrayList<String> list = a.getMemberRealList();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("WEB-INF/views/acorn.jsp").forward(request, response);
		
	}
}
