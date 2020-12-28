package service;

import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import hiddencatch.model.LeaderboardDAO;
import hiddencatch.model.ClientDAO;
import hiddencatch.model.dto.LeaderboardDTO;

public class HCService {
	//싱글톤 패턴으로 만들기
	
	//id 불일치시 "id", pw 불일치시 "pw", 로그인 성공시 "success"를 반환
	public static String login(String id, String pw) {
		return ClientDAO.login(id, pw);
	}
	
	//로그아웃시 세션 삭제
	public static String logout(String id, String pw) {
		return ClientDAO.login(id, pw); 
	}
		
	//게임 결과를 리더보드에 입력 성공시 true 반환
	public static boolean insert(String id, int gameresult) {
		return LeaderboardDAO.insert(id, gameresult);
	}
	
	//리더보드 List 받아와서 반환
	public static ArrayList<LeaderboardDTO> getLeaderboard() {
		return LeaderboardDAO.getLeaderboard();
	}
	
	//회원 가입
	public static String join(String id, String pw) {
		return ClientDAO.insert(id, pw); 
	}	

	//회원 정보 삭제
	public static boolean delete(String id) {
	return ClientDAO.delete(id); 
	}

	//비밀번호 수정
	public static boolean update(String id, String newPw) {
	return ClientDAO.update(id, newPw); 
	}
}
