package prj0901;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 웹에서 요청이 들어오면 --> 디비에 등록될 수 있도록
@WebServlet("/reg")
public class AcornServletReg extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		// 등록 서비스 (AcornService 사용하여 데이터베이스에 등록요청)
		
		//
		
		AcornService s = new AcornService();
		s.resisterMember(new Customer(id,pw,name));
		request.getRequestDispatcher("WEB-INF/views/ok.jsp").forward(request, response);
		
		// 
	}
}
