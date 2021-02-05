package member.svc;

import member.vo.MemberBean;
import static member.db.JdbcUtil.*;
import java.sql.Connection;
import member.dao.MemberDAO;

public class MemberLoginService {

	public boolean login(MemberBean member) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		boolean loginResult = false;
		String loginId = memberDAO.selectLoginId(member);
		if(loginId != null){
			loginResult = true;
		}
		close(con);
		return loginResult;
	}

}
