package member.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import member.svc.MemberListService;
import member.vo.ActionForward;
import member.vo.MemberBean;

public class MemberListAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	HttpSession session=request.getSession();
	   		String id=(String)session.getAttribute("id");
	   		ActionForward forward = null;
	   		if(id==null){
	   			forward = new ActionForward();
				forward.setRedirect(true);
				forward.setPath("./memberLogin.me");
	   		}else if(!id.equals("admin")){
	   			response.setContentType("text/html;charset=UTF-8");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		//out.println("alert('관리자가 아닙니다.게시판으로 이동합니다.');");
		   		out.println("location.href='./boardWriteForm.bo'");
		   		out.println("</script>");
	   		}
	   		else{
	   	    forward = new ActionForward();
	   	    MemberListService memberListService = new MemberListService();
	   		ArrayList<MemberBean> memberList=memberListService.getMemberList();
	   		request.setAttribute("memberList", memberList);
	   		forward.setPath("/member/member_list.jsp");
	   		}
	   		return forward;
	}
}