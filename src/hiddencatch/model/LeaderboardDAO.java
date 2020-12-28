package hiddencatch.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import hiddencatch.model.dto.LeaderboardDTO;
import hiddencatch.model.util.PublicCommon;

public class LeaderboardDAO {
	
	public static boolean insert(String id, int gameresult) {
		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		boolean result = false;
		try {
			tx.begin();
			LeaderboardDTO newscore = new LeaderboardDTO(id, gameresult,
					new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis())));
			em.persist(newscore);
			result = true;
			tx.commit();
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			em.close();
		}
		return result;
	}

	public static ArrayList<LeaderboardDTO> getLeaderboard() {
		EntityManager em = PublicCommon.getEntityManager();
		ArrayList<LeaderboardDTO> result = null;
		try {
			result = (ArrayList<LeaderboardDTO>) em.createNamedQuery("findLeaderboard").getResultList();
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			em.close();
		}
		return result;
	}
}
