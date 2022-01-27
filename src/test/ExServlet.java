package test;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doGET() 호출!");
		// 영역 객체에 정보를 생성 -> 전달 core_set2.jsp
		request.setAttribute("itwill", "5강");
		
		// MemberDTO 객체 -> 객체 정보를 전달
		MemberDTO dto = new MemberDTO();
		dto.setId("admin");
		dto.setPw("1234");
		dto.setName("홍길동");
		dto.setEmail("admin@itwill.com");
		dto.setAddr("부산진구");
		
		request.setAttribute("MemberDTO", dto);
		
		// 객체 1개를 더 생성 => 총 2명의 정보를 Vector에 저장
		// set2.jsp 페이지에서 모든 사람의 정보를 출력	
		Vector vec = new Vector();
		
		MemberDTO dto2 = new MemberDTO();
		dto2.setId("admin2");
		dto2.setPw("12342");
		dto2.setName("홍길동2");
		dto2.setEmail("admin2@itwill.com");
		dto2.setAddr("부산진구2");
		
		vec.add(dto);
		vec.add(dto2);
		
		request.setAttribute("vec", vec);
		
		// 페이지 이동-forward
		//<jsp:forward page="core_set2.jsp"/> jsp 파일만 사용가능
		
		RequestDispatcher dis
		     = request.getRequestDispatcher("/JSTL/core_set2.jsp");
		dis.forward(request, response);
		
		
	}
	

}
