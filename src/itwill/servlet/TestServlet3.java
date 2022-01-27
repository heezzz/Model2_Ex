package itwill.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @WebServlet("매핑주소") : 매핑주소로 서블릿을 연결하는 에노테이션

@WebServlet("/test3")
public class TestServlet3 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		// Person 객체 생성후 BeanTest.jsp 정보전달 후 출력
		Phone p1 = new Phone();
		p1.setModel("아이폰13");
		p1.setColor("블랙");
		
		Person kim = new Person();
		
		kim.setName("홍길동");
		kim.setP(p1);
		
		request.setAttribute("kim", kim);
		
		// BeanTest.jsp 포워딩
		RequestDispatcher dis 
		   = request.getRequestDispatcher("/el/BeanTest.jsp");
		
		dis.forward(request, response);
	}

}
