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
			System.err.println("unable to retrieve hibernate session " + e.getMessage());
		}
	}

	public Collection<Classifying> getClassifyingByUserId(int userId) {
		List list = null;
		try {
			Query query = session.createQuery("select classifying " +
											  "from Classifying as classifying " + 
											  "join classifying.id.User as user " +
											  "where user.id = :user");
			query.setLong("user", userId);
			list = query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return list;
	}

	public Collection<Bd> getBdByUserId(int userId) {
		List list = null;
		try {	
			Query query = session.createQuery("select bd_user.Bd " +
											  "from BdUser as bd_user " +
											  "join bd_user.User as user " +
											  "where user.id = :user");
			query.setLong("user", userId);
			list = query.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return list;
	}	
	
	public void insert(Bd emp) {
		try {
			// Transaction tx = session.beginTransaction();
			session.save(emp);
			// tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}
}