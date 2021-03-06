package notice.controller.customer;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.controller.Controller;
import notice.dao.NoticeDao;
import notice.vo.Notice;

public class NoticeDetailController implements Controller {
	
	
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) 
			throws Exception {
		System.out.println("NoticeDetailController");
		String seq=request.getParameter("c");
		String hit=request.getParameter("h");
		NoticeDao dao=new NoticeDao();
		Notice n=dao.getNotice(seq,hit);
		
		
		System.out.println("h i t : "+hit);
//		request에 n을 저장
		request.setAttribute("n", n);
//		jsp로 forward
		request.getRequestDispatcher("noticeDetail.jsp").forward(request, response);

	}

}
