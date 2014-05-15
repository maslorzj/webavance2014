package com.bibli.bd;

import java.util.Collection;
import java.util.List;
import net.sf.hibernate.HibernateException;
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

	public Collection<Bd> fillBibliBd() {
		List list = null;
		try {
			list = session.find("from Bd");
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