package prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lotte3.do")
public class Ex01 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); //서버가 보내는 데이터의 형식 html 형식임을 보여줌
		// response.setContentType("text/plane"); 텍스트 문서로 인식에서 아래 문자가 그대로 출력됨 태그로 인식되지 않음
		response.setCharacterEncoding("utf-8"); // utf-8 형식으로 데이터를 보낸다는 의미
		PrintWriter out =response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2> hi servlet ! </h2>");
		out.println("</body>");
		out.println("</html>");
	}
}
