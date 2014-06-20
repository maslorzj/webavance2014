package com.bibli.bd;

import java.util.Collection;
import java.util.List;

import net.sf.hibernate.HibernateException;
import net.sf.hibernate.Query;
import net.sf.hibernate.Session;
import net.sf.hibernate.Transaction;

public class HibernateImpl {
	private Session session;

	public HibernateImpl() {
		try {
			this.session = HibernateUtil.currentSession();
			System.out.println("session retrieved successfully");
		} catch (Exception e) {
			System.err.println("unable to retrieve hibernate session "
					+ e.getMessage());
		}
	}

	public Collection<Classifying> getClassifyingByUserId(int userId) {
		List list = null;
		try {
			Query query = session.createQuery("select classifying "
					+ "from Classifying as classifying "
					+ "join classifying.id.User as user "
					+ "where user.id = :user");
			query.setLong("user", userId);
			list = query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return list;
	}

	public Collection<Bd> getBds() {
		List list = null;
		try {
			Query query = session.createQuery("select from Bd");
			list = query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return list;
	}

	public Collection<Bd> getBdById(Long bdId) {
		List list = null;
		try {
			Query query = session.createQuery("select from Bd "
					+ "where id = :bdId");
			query.setLong("bdId", bdId);
			list = query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public Collection<BdUser> isBdInBibliBd(Long bdId, int userId) {
		List list = null;
		try {
			Query query = session.createQuery("select from BdUser "
					+ "where bdId = :bd "
					+ "and userId = :user");
			query.setLong("bd", bdId);
			query.setInteger("user", userId);
			list = query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return list;
	}

	public Collection<Bd> getBdByUserId(int userId) {
		List list = null;
		try {
			Query query = session.createQuery("select bd_user.Bd "
					+ "from BdUser as bd_user " + "join bd_user.User as user "
					+ "where user.id = :user");
			query.setLong("user", userId);
			list = query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return list;
	}

	public Collection<User> IsUserExist(String pseudo, int password) {
		List list = null;
		try {
			Query query = session.createQuery("select from User "
					+ "where pseudo = :userPseudo "
					+ "and password = :userPassword");
			query.setString("userPseudo", pseudo);
			query.setInteger("userPassword", password);
			list = query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return list;
	}

	public void insertBd(Bd bd) {
		if (bd.getCouvPath() == null) {
			bd.setCouvPath("resources/img/couv/default.png");
		}
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(bd);
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				try {
					tx.rollback();
				} catch (HibernateException e1) {
					e.getMessage();
				}
			}
		}
	}

	public void insertBdUser(BdUser bdUser) {
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(bdUser);
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				try {
					tx.rollback();
				} catch (HibernateException e1) {
					e.getMessage();
				}
			}
		}
	}
	
	public void deleteBdUser(BdUser bdUser) {
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.delete("select from BdUser"
					+ " where userId = " + bdUser.getUser().getId()
					+ " and bdId = " + bdUser.getBd().getId());
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				try {
					tx.rollback();
				} catch (HibernateException e1) {
					e.getMessage();
				}
			}
		}
	}

	public void insertUser(User user) {
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.save(user);
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				try {
					tx.rollback();
				} catch (HibernateException e1) {
					e.getMessage();
				}
			}
		}
	}
}