package member.svc;

import member.vo.MemberBean;
import static member.db.JdbcUtil.*;
import java.sql.Connection;
import member.dao.MemberDAO;

public class MemberViewService {

	public MemberBean getMember(String viewId) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		MemberBean member = memberDAO.selectMember(viewId);
		close(con);
		return member;
	}

}
