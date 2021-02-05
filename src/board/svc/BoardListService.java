package board.svc;

import static board.db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import board.dao.BoardDAO;
import board.vo.BoardBean;

public class BoardListService {
	public int getListCount() throws Exception{
		
		
		int listCount=0;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		listCount=boardDAO.selectListCount();
		close(con);
		return listCount;
		
	}
	public ArrayList<BoardBean> getArticleList(int page, int limit) throws Exception{
		ArrayList<BoardBean> articleList=null;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		articleList=boardDAO.selectArticleList(page, limit);
		close(con);
		return articleList;
	}
}
