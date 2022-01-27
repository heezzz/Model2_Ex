package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {
	// alt shift s + v
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// get방식으로 호출할때 실행되는 메서드
		System.out.println("get 방식 페이지 호출!");
		
		// 전달받은 정보를 사용해서 화면에 메세지를 출력
		response.setContentType("text/html; charset=utf-8");
		
		// 화면과 통하는 통로를 생성
		PrintWriter out = response.getWriter();
		
		out.print("안녕하세요!");
		out.print("<html>");
		out.print("<head>");
		out.print("</head>");
		out.print("<body>");
		out.print(" <h1> 서블릿 페이지 입니다. </h1> ");
		out.print("</body>");		
		out.print("</html>");
		out.close(); // 해당 통로를 닫기
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// post방식으로 호출할때 실행되는 메서드
	}
}
