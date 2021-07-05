package notice.controller.customer;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.controller.Controller;
import notice.dao.NoticeDao;
import notice.vo.Notice;

public class NoticeDelProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("NoticeDelController");
		String seq=request.getParameter("c");
		Notice n =new Notice();
		NoticeDao dao=new NoticeDao();

		
		String sql="delete from notices where seq=?";
		//db connect
		//드라이버로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//접속
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pw="111111";
		Connection con=DriverManager.getConnection(url, user, pw);
		//실행
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, seq);
		int af=pstmt.executeUpdate();//return int
		

		//목록으로 이동
		PrintWriter out=response.getWriter();
		if(af>0)
			response.sendRedirect("notice.jsp");
		else
			out.write("입력오류");

		
		
		request.getRequestDispatcher("noticeRegProc.jsp").forward(request, response);
	}
	
	

}
