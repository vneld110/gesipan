package dao;

import java.util.List;

public interface CommonDAO { // 일반적으로 쓰이는 DAO. 더 추가할 것 없음.
	// where절이 없는 SQL문에 대해서는, 파라미터 필요 없음.
	
	// 추가 CREATE
	public int insert(Object obj);
	
	// 전체 요소의 개수 
	public int count();
	
	// ID로 중복 값 없이 추출
	public Object getElementById(String id);
	
	// Name으로 중복 값 허용하며 추출 
	public List<Object> getElementsByName(String name);
	
	// 전체 목록 추출
	public List<Object> list();
	
	// 수정
	public int update(Object obj);
	
	// 삭제
	public int delete(String id);
}
