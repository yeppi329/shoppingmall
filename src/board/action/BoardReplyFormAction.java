package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.svc.BoardDetailService;
import board.vo.ActionForward;
import board.vo.BoardBean;

public class BoardReplyFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {


		ActionForward forward = new ActionForward();
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String nowPage = request.getParameter("page");
		BoardDetailService boardDetailService = new BoardDetailService();
		BoardBean article = boardDetailService.getArticle(board_num);
		request.setAttribute("article", article);
		request.setAttribute("page", nowPage);
		forward.setPath("/board/qna_board_reply.jsp");
		return forward;
	}

}
