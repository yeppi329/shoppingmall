package member.svc;

import member.vo.MemberBean;
import static member.db.JdbcUtil.*;
import java.sql.Connection;
import member.dao.MemberDAO;

public class MemberJoinService {

	public boolean joinMember(MemberBean member) {
		// TODO Auto-generated method stub
		boolean joinSuccess = false;
		MemberDAO memberDAO = MemberDAO.getInstance();
		Connection con = getConnection();
		memberDAO.setConnection(con);
		int insertCount = memberDAO.insertMember(member);
		if(insertCount > 0){
			joinSuccess = true;
			commit(con);
		}
		else{
			rollback(con);
		}
		close(con);
		return joinSuccess;
	}

}
