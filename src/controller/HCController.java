package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hiddencatch.model.dto.LeaderboardDTO;
import lombok.extern.slf4j.Slf4j;
import service.HCService;

@WebServlet("/controller")
@Slf4j
public class HCController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	public void process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String command = req.getParameter("command");
		HttpSession session = req.getSession();
			try {
				if((String)session.getAttribute("id")==null && !command.equals("login") && !command.equals("join")) {
					req.setAttribute("msg", "로그인하세요");
					req.getRequestDispatcher("view/error.jsp").forward(req, res);
				} else {
					if(command.equals("login")) {
						login(req, res);
					} else if(command.equals("game")){ 
						game(req, res);
					} else if(command.equals("join")) { 
						join(req, res);
					} else if(command.equals("gameover")) {
						gameover(req, res);
					} else if(command.equals("update")) { 
						update(req, res);
					} else if(command.equals("updatesuccess")) { 
						updatesuccess(req, res);
					} else if(command.equals("logout")) { 
						logout(req, res);
					} else if(command.equals("main")) { 
						main(req, res);
					} else if(command.equals("delete")) { 
						delete(req, res);
					} else {
						req.setAttribute("msg", "유효하지 않은 command입니다.");
						req.getRequestDispatcher("view/error.jsp").forward(req, res);
					}
				}
			} catch(Exception e) {
				e.printStackTrace();
				req.setAttribute("msg", e.getMessage());
				req.getRequestDispatcher("view/error.jsp").forward(req, res);
			}
		}
	
	private void main(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.getRequestDispatcher("main.jsp").forward(req, res);
	}

	private void logout(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.getRequestDispatcher("logout.jsp").forward(req, res);
	}

	//게임하기
	private void game(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.getRequestDispatcher("game"+req.getParameter("gamenumber")+".jsp").forward(req, res);
	}
	
	//update하기
	private void update(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.getRequestDispatcher("crud/update.jsp").forward(req, res);
	}

	//로그인 DB 조회
	public void login(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String url = "view/error.jsp";
		HttpSession session = req.getSession();
		try {
			String loginresult = HCService.login(id, pw);
			if(loginresult.equals("success")) {
				session.setAttribute("id", id);
				session.setAttribute("pw", pw);
				url = "main.jsp";
			} else if(loginresult.equals("id")) {
				req.setAttribute("msg", "id를 다시 확인해주세요");
			} else if(loginresult.equals("pw")){
				req.setAttribute("msg", "비밀번호를 다시 확인해주세요");
			}
		} catch(Exception e) {
			req.setAttribute("msg", "DB 조회 실패");
		}
		req.getRequestDispatcher(url).forward(req, res);
	}
	
	//게임 결과 db에 입력 & 리더보드 조회 & 결과 페이지로 이동
	public void gameover(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String url = "view/error.jsp";
		HttpSession session = req.getSession();
		try {
			if(HCService.insert((String) session.getAttribute("id"), Integer.parseInt((String) session.getAttribute("result")))) {
				List<LeaderboardDTO> list = HCService.getLeaderboard();
				if(list.size()==0) {
					req.setAttribute("msg", "순위표 데이터 없음");
				} else {
					session.setAttribute("leaderboard", list);
					url = "result.jsp";
				}
			} else {
				req.setAttribute("msg", "게임 결과 입력 실패");
			}
		} catch(Exception e) {
			req.setAttribute("msg", "DB조회 실패");
		}
		req.getRequestDispatcher(url).forward(req, res);
	}
	
	//회원 가입
		public void join(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			String id = req.getParameter("id");
			String pw = req.getParameter("pw");
			String url = "view/error.jsp";
			HttpSession session = req.getSession();
			try {String joinresult = HCService.join(id, pw);
				if(joinresult.equals("success")) {
					session.setAttribute("id", id);
					session.setAttribute("pw", pw);
					url = "crud/view.jsp";
				} else if(joinresult.equals("fail")) {
					req.setAttribute("msg", "중복된 ID가 존재합니다.");
				}
			} catch(Exception e) {
				req.setAttribute("msg", "가입 실패");
			}
			req.getRequestDispatcher(url).forward(req, res);
		}

	
		public void updatesuccess(HttpServletRequest req, HttpServletResponse res)	throws ServletException, IOException {
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("id");
			String newPw = req.getParameter("newPw");
			String url = "view/error.jsp";
			try {
				if(HCService.update(id, newPw)) {
					session.setAttribute("pw", newPw);
					url="crud/updateSuccess.jsp";
				} else {
					req.setAttribute("msg", "수정 실패");
				}
			} catch(Exception e) {
				req.setAttribute("msg", "수정 실패");
			}req.getRequestDispatcher(url).forward(req, res);
		}
		
		public void delete(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			String url = "view/error.jsp";
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("id");		
			try {		
				HCService.delete(id);	
				url = "crud/deleteSuccess.jsp";
			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("msg", "회원 삭제시 에러");
			}		
			req.getRequestDispatcher(url).forward(req, res);
		}	
	}


