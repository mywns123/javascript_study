package javascript_study.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Member_login_ok extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");


		String userId = request.getParameter("user_id");
		String userPwd = request.getParameter("user_pw");
		
		String name = null;
		if(userId.equals("korean") && userPwd.equals("12345")){
			name = "박부장";
		}else if(userId.equals("seoul") && userPwd.equals("56789")){
			name = "홍대리";
		}
		System.out.println(userId +  "," + name);		
		String msg = String.format("{\"user_id\" : \"%s\", \"user_name\" : \"%s\"}", userId, name);

		PrintWriter out = response.getWriter();
		out.print(msg);
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
