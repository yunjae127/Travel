package com.travel.service;

import java.util.List;

import com.travel.domain.MemberRegistVO;

public interface MemberService {
	// 글 등록
		void insertMember(MemberRegistVO vo);

		// 글 수정
		void updateMember(MemberRegistVO vo);

		// 글 삭제
		void deleteMember(MemberRegistVO vo);

		// 글 상세 조회
		MemberRegistVO getMember(MemberRegistVO vo);

		// 글 목록 조회
		List<MemberRegistVO> getMemberList(MemberRegistVO vo);
		
		//로그인
		MemberRegistVO loginMember(MemberRegistVO vo);
		
		
		//아이디찾기
				MemberRegistVO findIidd(MemberRegistVO vo);
				
				
				// 비밀번호 찾기 
				MemberRegistVO findPw(MemberRegistVO vo);
		
		int changePw(MemberRegistVO vo, String pw_check);

		//아이디 중복확인
	      String idSearch(String id);
		
}
