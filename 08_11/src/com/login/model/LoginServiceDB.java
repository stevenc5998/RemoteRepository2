package com.login.model;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.*;
import javax.sql.*;

import com.member.model.MemberVO;

import _00_initial_Servise.GlobalService;

public class LoginServiceDB implements LoginServiceDAO {
	static private List<MemberVO> memberList = new ArrayList<MemberVO>();
	private DataSource ds = null;

	public LoginServiceDB() throws NamingException, SQLException {
		Context ctx = new InitialContext();
		ds = (DataSource) ctx.lookup(GlobalService.JNDI_DB_NAME);
		if (memberList.isEmpty()) {
			populateMemberList(); // 此方法只會執行一次
		}
	}

	public void populateMemberList() throws SQLException {
		//???
	}

	public MemberVO checkIDPassword(Integer userId, String password) {
		// 檢查userId與password是否正確
		for (MemberVO memberVO : memberList) {
			if (memberVO.getMemberId() == userId) {
				String encrypedString = GlobalService.encryptString(password.trim());
				String pswd = GlobalService.getMD5Endocing(encrypedString);
				String mbpswd = memberVO.getMemberPassword().trim();
				if (mbpswd.equals(pswd)) {
					return memberVO;
				}
			}
		}
		return null;
	}

	public List<MemberVO> getMemberList() {
		return memberList;
	}
	public void addNewMember(MemberVO mb) {
		memberList.add(mb);
	}


	
}
