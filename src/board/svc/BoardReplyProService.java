package board.svc;

import static board.db.JdbcUtil.*;

import java.sql.Connection;

import board.dao.BoardDAO;
import board.vo.BoardBean;

public class BoardReplyProService {

	public boolean replyArticle(BoardBean article) throws Exception{
		// TODO Auto-generated method stub
		
		boolean isReplySuccess=false;
		int insertCount=0;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		insertCount=boardDAO.insertReplyArticle(article);
		
		if(insertCount>0) {
			commit(con);
			isReplySuccess=true;
		}else {
			rollback(con);
		}
		close(con);
		return isReplySuccess;
	}

}
