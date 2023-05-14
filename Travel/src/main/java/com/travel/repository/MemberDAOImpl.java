package com.travel.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.domain.MemberRegistVO;


@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertMember(MemberRegistVO vo) {
		mybatis.insert("MemberDAO.insertMember", vo);
	}

	public void updateMember(MemberRegistVO vo) {

	}

	public void deleteMember(MemberRegistVO vo) {
		mybatis.delete("MemberDAO.deleteMember", vo);

	}

	  // 아이디 중복확인
	   public String idSearch (String id) {
	      return mybatis.selectOne("MemberDAO.idSearch", id);
	   }
	
	public MemberRegistVO getMember(MemberRegistVO vo) {
		
		return null;
	}

	public List<MemberRegistVO> getMemberList(MemberRegistVO vo) {
		
		return mybatis.selectList("MemberDAO.getMemberList", vo);
	}
	
	public MemberRegistVO loginMember(MemberRegistVO vo) {
		
		return mybatis.selectOne("MemberDAO.loginMember", vo);
	}
	
	
	// 아이디찾기
	public MemberRegistVO findIidd (MemberRegistVO vo) {
		return mybatis.selectOne("MemberDAO.findIidd", vo);
	}
	
	
	// 비밀번호 찾기 
	public MemberRegistVO findPw (MemberRegistVO vo) {
		return mybatis.selectOne("MemberDAO.findPw", vo);
	}
	
	public int changePw(MemberRegistVO vo, String pw_check) {
		Map map = new HashMap();
		map.put("vo", vo);
		map.put("pw_check", pw_check);
		return mybatis.update("MemberDAO.changePw", map);
	}

}
