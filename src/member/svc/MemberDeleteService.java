package member.svc;

import static member.db.JdbcUtil.*;
import java.sql.Connection;
import member.dao.MemberDAO;

public class MemberDeleteService {

	public boolean deleteMember(String deleteId) {
		// TODO Auto-generated method stub
		boolean deleteResult = false;
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		int deleteCount = memberDAO.deleteMember(deleteId);
		if(deleteCount > 0){
			commit(con);
			deleteResult = true;
		}
		else{
			rollback(con);
		}
		close(con);
		return deleteResult;
	}

}
