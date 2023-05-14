package com.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.domain.MemberRegistVO;
import com.travel.repository.MemberDAOImpl;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOImpl memberDAO;
	
	public void insertMember(MemberRegistVO vo) {
		memberDAO.insertMember(vo);

	}

	public void updateMember(MemberRegistVO vo) {

	}

	public void deleteMember(MemberRegistVO vo) {
		memberDAO.deleteMember(vo);
	}

	public MemberRegistVO getMember(MemberRegistVO vo) {

		return null;
	}

	// 중복 확인
	   public String idSearch(String id) {
	      return memberDAO.idSearch(id);
	   }
	
	public List<MemberRegistVO> getMemberList(MemberRegistVO vo) {
		
		return memberDAO.getMemberList(vo);
	}
	
	public MemberRegistVO loginMember(MemberRegistVO vo) {
		return memberDAO.loginMember(vo);

	}
	
	// 아이디 찾기
	public MemberRegistVO findIidd(MemberRegistVO vo) {
		return memberDAO.findIidd(vo);
	}
	
	
	// 비밀번호 찾기 
	public MemberRegistVO findPw(MemberRegistVO vo) {
		return memberDAO.findPw(vo);
	}
	
	public int changePw(MemberRegistVO vo, String pw_check) {
		return memberDAO.changePw(vo, pw_check);
	}

}
