package board.svc;

import java.sql.Connection;
import board.dao.BoardDAO;
import board.vo.BoardBean;
import static board.db.JdbcUtil.*;
public class BoardWriteProService {
	
	public boolean registArticle(BoardBean boardBean) throws Exception{
		
		boolean isWriteSuccess=false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int insertCount = boardDAO.insertArticle(boardBean);
		if(insertCount > 0) {
			commit(con);
			isWriteSuccess=true;
		}
		else {
			rollback(con);
		}
		close(con);
		return isWriteSuccess;
	}


	
}
