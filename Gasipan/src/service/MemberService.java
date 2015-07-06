package service;

import java.util.List;

import bean.MemberBean;

public interface MemberService {
	
	 /* insert 회원가입*/
    public int join(MemberBean bean);
    /* count : 회원 수 */
    public int count();
     /* getElementById : 회원 상세 정보*/
    public MemberBean memberDetail(String id);
     /* getElementsByName : 특정 검색어으로 회원 검색*/
    public List<MemberBean> searchByKeyword(String keyword);
     /* list : 회원 전체 목록 */
    public List<Object> memberList();
    /* update : 회원 정보 수정*/
    public int updateMember(MemberBean bean);
    /* delete : 회원 탈퇴*/
    public int deleteMember(String id);
    /* 로그인 */
    public String login(String id, String password);
}
