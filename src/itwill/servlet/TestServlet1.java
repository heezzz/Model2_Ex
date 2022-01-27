package itwill.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TestServlet1 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		// test1 주소가 실행될때 cnt값을 200으로 생성 값을 저장후 출력
		//int cnt = 200;
		
	/*	PrintWriter out = response.getWriter();
		out.print(cnt+"<br>");
		out.close();*/
		
		// request 영역에 cnt = 200값을 담아서 출력(영역객체 사용)
		request.setAttribute("cnt", 200);
		
		// session 영역에 cnt값 저장
		HttpSession session = request.getSession();
		session.setAttribute("cnt", 3000);
		
		
		// 서블릿과 연결된 jsp페이지에서 정보를 받아서 출력
		RequestDispatcher dis 
		   = request.getRequestDispatcher("/el/AttributeTest.jsp");
		
		dis.forward(request, response);
	}
	
	

}
