package com.travel.repository;

import java.util.List;

import com.travel.domain.MemberRegistVO;

public interface MemberDAO {
	// 글 등록
	public void insertMember(MemberRegistVO vo);

	// 글 수정
	public void updateMember(MemberRegistVO vo);

	// 글 삭제
	public void deleteMember(MemberRegistVO vo);

	// 글 상세 조회
	public MemberRegistVO getMember(MemberRegistVO vo);

	// 글 목록 조회
	public List<MemberRegistVO> getMemberList(MemberRegistVO vo);

	//로그인
	public MemberRegistVO loginMember(MemberRegistVO vo);
	
	//아이디 팢기
		public MemberRegistVO findIidd(MemberRegistVO vo);
		
		// 비밀번호 찾기
		public MemberRegistVO findPw(MemberRegistVO vo);

	
	public int changePw(MemberRegistVO vo, String pw_check);
}
