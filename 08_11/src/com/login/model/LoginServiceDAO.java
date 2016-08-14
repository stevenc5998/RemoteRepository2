package com.login.model;

import java.sql.SQLException;
import java.util.List;

import com.member.model.MemberVO;



public interface LoginServiceDAO {
	public void populateMemberList() throws SQLException ;
	public MemberVO checkIDPassword(Integer userId, String password) ;
	public List<MemberVO> getMemberList();
	public void addNewMember(MemberVO memberVO);
}
