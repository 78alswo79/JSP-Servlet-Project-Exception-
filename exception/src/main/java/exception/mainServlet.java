package exception;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class mainServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html; charset=utf-8");

		PrintWriter out = resp.getWriter();
		
		int a = 1;
		int b = 0;

		// 커스텀 Exception 만들기
		try {
			
			// 파라미터로 넘어온 no와 a를 비교해서 같지 않으면 CustomException처리 할거임.
			String c = req.getParameter("no");
			test(Integer.parseInt(c), a);
			
			out.println("<html>");
			out.println("<head><title>현재시간</title></head>");
			out.println("<body>");
			out.println("나눈 결과는?");
			out.println(050/0);
			out.println("입니다.");
			out.println("</body></html>");
			
		} 
//		catch (ArithmeticException e) {
//			e.getMessage();
//		} 
		catch (CustomFormatException e) {
			throw new CustomFormatException("String not format number");
		}
		catch (NumberFormatException e) {
			throw new CustomFormatException("String not format number");
		}
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}
	
	private void test(int a, int b) {
		if (a != b) {
			throw new CustomException("A and B equals not Int");
		}
	}
}
