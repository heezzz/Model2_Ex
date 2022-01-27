package itwill.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.MemberDTO;

public class TestServlet2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		// 객체 (test.MemberDTO)사용해서 정보를 저장
		// 저장된 정보를 jsp 페이지에 전달 (속성으로 저장)
		
		MemberDTO dto = new MemberDTO();
		dto.setId("admin");
		dto.setPw("1234");
		
		request.setAttribute("dto", dto);
		// session 영역에 저장해서 전달해도 되는가?	
		// -> 사용은 가능하지만, 객체 지향 설계상 비효율적인 설계
		
		
		// 배열 정보를 ArrayTest.jsp로 전달해서 출력
		String[] strArr = {"itwill","busan","Java","JSP"};
		
		request.setAttribute("strArr", strArr);
		
		ArrayList arrlist = new ArrayList();
		arrlist.add(1);
		arrlist.add(2);
		arrlist.add(3);
		arrlist.add(4);
		
		request.setAttribute("arrlist", arrlist);
		
		
		//   /el/ArrayTest.jsp 페이지로 이동 (forward)
		RequestDispatcher dis = 
				request.getRequestDispatcher("/el/ArrayTest.jsp");
		dis.forward(request, response);

	}
	

}
