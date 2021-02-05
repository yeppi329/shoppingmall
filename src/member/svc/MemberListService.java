package member.svc;

import java.sql.Connection;
import java.util.ArrayList;
import member.dao.MemberDAO;
import static member.db.JdbcUtil.*;
import member.vo.MemberBean;

public class MemberListService {

	public ArrayList<MemberBean> getMemberList() {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		ArrayList<MemberBean> memberList = memberDAO.selectMemberList();
		close(con);
		return memberList;
	}

}
