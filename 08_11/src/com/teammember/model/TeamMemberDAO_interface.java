package com.teammember.model;

import java.util.*;

import com.member.model.MemberVO;
import com.teammember.model.TeamMemberVO;


public interface TeamMemberDAO_interface {
          public void insert(TeamMemberVO teamMemberVO);
          public void update(TeamMemberVO teamMemberVO);
          public void delete(Integer teamMemberId);
          public TeamMemberVO findByPrimaryKey(Integer teamMemberId);
          public List<TeamMemberVO> getAll();     
}
