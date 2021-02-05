package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.action.Action;
import board.action.BoardDeleteProAction;
import board.action.BoardDetailAction;
import board.action.BoardListAction;
import board.action.BoardModifyFormAction;
import board.action.BoardModifyProAction;
import board.action.BoardReplyFormAction;
import board.action.BoardReplyProAction;
import board.action.BoardWriteProAction;
import board.vo.ActionForward;

/**
 * Servlet implementation class BoardFrontController
 */
@WebServlet("*.bo")
public class BoardFrontController extends javax.servlet.http.HttpServlet 
{
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		String RequestURI=request.getRequestURI();  
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		ActionForward forward=null;
		Action action =null;
		
		if(command.equals("/boardWriteForm.bo")) {
			forward = new ActionForward();
			
			forward.setPath("/board/qna_board_write.jsp");
		}else if(command.contentEquals("/boardWritePro.bo")) {
			
			action = new BoardWriteProAction();
			try {
				forward = action.execute(request,response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/boardList.bo")) {
			action = new BoardListAction();
			try {
				forward =action.execute(request,response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardDetail.bo")) {
			action=new BoardDetailAction();
			try {
				forward =action.execute(request,response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardReplyForm.bo")) {
			action=new BoardReplyFormAction();
			try {
				forward =action.execute(request,response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardReplyPro.bo")) {
			action=new BoardReplyProAction();
			try {
				forward =action.execute(request,response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardModifyForm.bo")) {
			action=new BoardModifyFormAction();
			try {
				forward =action.execute(request,response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardModifyPro.bo")) {
			action=new BoardModifyProAction();
			try {
				forward =action.execute(request,response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardDeleteForm.bo")) {
			String nowPage=request.getParameter("page");
			request.setAttribute("page", nowPage);
			int board_num = Integer.parseInt(request.getParameter("board_num"));
			request.setAttribute("board_num", board_num);
			forward = new ActionForward();
			forward.setPath("/board/qna_board_delete.jsp");
		}else if(command.equals("/boardDeletePro.bo")) {
			action = new BoardDeleteProAction();
			try {
				forward =action.execute(request,response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		if(forward !=null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher dispatcher= request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
			
		}
	}
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doProcess(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doProcess(request,response);
	}

}
