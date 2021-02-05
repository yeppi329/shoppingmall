package board.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.svc.BoardListService;
import board.vo.ActionForward;
import board.vo.BoardBean;
import board.vo.PageInfo;

public class BoardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ArrayList<BoardBean> articleList = new ArrayList<BoardBean>();
		int page=1;
		int limit = 25;
		
		if(request.getParameter("page")!=null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		BoardListService boardListService = new BoardListService();
		int listCount = boardListService.getListCount(); //총 리스트 수 받아옴.
		articleList = boardListService.getArticleList(page,limit); //리스트를 받아옴.
		//총 페이지 수
		int maxPage=(int)((double)listCount/limit+0.95); // 0.95를 더해서 올림 처리
		//현재 페이지에 보여줄 시작 페이지 수(1,11,21등 ...)
		int startPage = (((int)((double)page/10+0.9))-1)*10+1;
		int endPage = startPage+10-1;
		
		if(endPage>maxPage)endPage=maxPage;
		PageInfo pageInfo = new PageInfo();
		pageInfo.setEndPage(endPage);
		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);		
		pageInfo.setStartPage(startPage);
		request.setAttribute("pageInfo",pageInfo);
		request.setAttribute("articleList",articleList);
		ActionForward forward = new ActionForward();
		forward.setPath("/board/qna_board_list.jsp");
		return forward;
	}

}
