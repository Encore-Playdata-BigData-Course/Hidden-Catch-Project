package hiddencatch.model;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import hiddencatch.model.dto.ClientDTO;
import hiddencatch.model.util.PublicCommon;

public class ClientDAO {
	public static String login(String id, String pw) {
		EntityManager em = PublicCommon.getEntityManager();
		String result = "success";
		String clientId = null;
		String clientPw = null;
		try {
			clientId = (String) em.createNamedQuery("findId").setParameter("id", id).getSingleResult();
			clientPw = (String) em.createNamedQuery("findPw").setParameter("id", id).getSingleResult();
			if (!clientId.equals(id)) {
				result = "id";
			} else if (!clientPw.equals(pw)) {
				result = "pw";
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			em.close();
		}
		return result;
	}

	// CRUD - JOIN - insert
	public static String insert(String id, String pw) {
		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		String result = "success";
		ClientDTO client = null;
		try {
			client = ClientDTO.builder().id(id).pw(pw).build();
			em.persist(client);
			tx.commit();
		} catch (Exception e) {
			result = "fail";
			e.printStackTrace();
		} finally {
			em.close();
		}
		return result;
	}

	// CRUD - UPDATE
	public static boolean update(String id, String newPw) {
		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		boolean result = false;
		try {
			int res = em.createNamedQuery("update").setParameter("id", id).setParameter("pw", newPw).executeUpdate();
			tx.commit();
			if (res == 1) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			em.close();
		}
		return result;
	}

	// CRUD - DELETE
	public static boolean delete(String id) {
		EntityManager em = PublicCommon.getEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		String sql = "delete from client where id=?";
		String sql1 = "delete from leaderboard where id=?";
		try {
			int result = em.createNativeQuery(sql).setParameter(1, id).executeUpdate();
			int result1 = em.createNativeQuery(sql1).setParameter(1, id).executeUpdate();
			tx.commit();
			if (result == 1) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			em.close();
		}
		return false;
	}
}