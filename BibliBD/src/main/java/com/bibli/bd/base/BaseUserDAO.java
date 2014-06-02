package com.bibli.bd.base;

import net.sf.hibernate.Hibernate;
import net.sf.hibernate.Session;
import com.bibli.bd.dao.UserDAO;

/**
 * This class has been automatically generated by Hibernate Synchronizer.
 * For more information or documentation, visit The Hibernate Synchronizer page
 * at http://www.binamics.com/hibernatesync or contact Joe Hudson at joe@binamics.com.
 *
 * This is an automatically generated DAO class which should not be edited.
 */
public abstract class BaseUserDAO extends com.bibli.bd.dao._RootDAO {

	public static UserDAO instance;

	/**
	 * Return a singleton of the DAO
	 */
	public static UserDAO getInstance () {
		if (null == instance) instance = new UserDAO();
		return instance;
	}

	/**
	 * com.bibli.bd.dao._RootDAO _RootDAO.getReferenceClass()
	 */
	public Class getReferenceClass () {
		return com.bibli.bd.User.class;
	}
	
	public com.bibli.bd.User load(java.lang.Integer key)
		throws net.sf.hibernate.HibernateException {
		return (com.bibli.bd.User) load(getReferenceClass(), key);
	}

	public com.bibli.bd.User load(java.lang.Integer key, Session s)
		throws net.sf.hibernate.HibernateException {
		return (com.bibli.bd.User) load(getReferenceClass(), key, s);
	}

	public com.bibli.bd.User loadInitialize(java.lang.Integer key, Session s) 
			throws net.sf.hibernate.HibernateException { 
		com.bibli.bd.User obj = load(key, s); 
		if (!Hibernate.isInitialized(obj)) {
			Hibernate.initialize(obj);
		} 
		return obj; 
	}

	/**
	 * Persist the given transient instance, first assigning a generated identifier. (Or using the current value
	 * of the identifier property if the assigned generator is used.) 
	 * @param user a transient instance of a persistent class 
	 * @return the class identifier
	 */
	public java.lang.Integer save(com.bibli.bd.User user)
		throws net.sf.hibernate.HibernateException {
		return (java.lang.Integer) super.save(user);
	}

	/**
	 * Persist the given transient instance, first assigning a generated identifier. (Or using the current value
	 * of the identifier property if the assigned generator is used.) 
	 * Use the Session given.
	 * @param user a transient instance of a persistent class
	 * @param s the Session
	 * @return the class identifier
	 */
	public java.lang.Integer save(com.bibli.bd.User user, Session s)
		throws net.sf.hibernate.HibernateException {
		return (java.lang.Integer) super.save(user, s);
	}

	/**
	 * Either save() or update() the given instance, depending upon the value of its identifier property. By default
	 * the instance is always saved. This behaviour may be adjusted by specifying an unsaved-value attribute of the
	 * identifier property mapping. 
	 * @param user a transient instance containing new or updated state 
	 */
	public void saveOrUpdate(com.bibli.bd.User user)
		throws net.sf.hibernate.HibernateException {
		super.saveOrUpdate(user);
	}

	/**
	 * Either save() or update() the given instance, depending upon the value of its identifier property. By default the
	 * instance is always saved. This behaviour may be adjusted by specifying an unsaved-value attribute of the identifier
	 * property mapping. 
	 * Use the Session given.
	 * @param user a transient instance containing new or updated state.
	 * @param s the Session.
	 */
	public void saveOrUpdate(com.bibli.bd.User user, Session s)
		throws net.sf.hibernate.HibernateException {
		super.saveOrUpdate(user, s);
	}

	/**
	 * Update the persistent state associated with the given identifier. An exception is thrown if there is a persistent
	 * instance with the same identifier in the current session.
	 * @param user a transient instance containing updated state
	 */
	public void update(com.bibli.bd.User user) 
		throws net.sf.hibernate.HibernateException {
		super.update(user);
	}

	/**
	 * Update the persistent state associated with the given identifier. An exception is thrown if there is a persistent
	 * instance with the same identifier in the current session.
	 * Use the Session given.
	 * @param user a transient instance containing updated state
	 * @param the Session
	 */
	public void update(com.bibli.bd.User user, Session s)
		throws net.sf.hibernate.HibernateException {
		super.update(user, s);
	}

	/**
	 * Remove a persistent instance from the datastore. The argument may be an instance associated with the receiving
	 * Session or a transient instance with an identifier associated with existing persistent state. 
	 * @param id the instance ID to be removed
	 */
	public void delete(java.lang.Integer id)
		throws net.sf.hibernate.HibernateException {
		super.delete(load(id));
	}

	/**
	 * Remove a persistent instance from the datastore. The argument may be an instance associated with the receiving
	 * Session or a transient instance with an identifier associated with existing persistent state. 
	 * Use the Session given.
	 * @param id the instance ID to be removed
	 * @param s the Session
	 */
	public void delete(java.lang.Integer id, Session s)
		throws net.sf.hibernate.HibernateException {
		super.delete(load(id, s), s);
	}

	/**
	 * Remove a persistent instance from the datastore. The argument may be an instance associated with the receiving
	 * Session or a transient instance with an identifier associated with existing persistent state. 
	 * @param user the instance to be removed
	 */
	public void delete(com.bibli.bd.User user)
		throws net.sf.hibernate.HibernateException {
		super.delete(user);
	}

	/**
	 * Remove a persistent instance from the datastore. The argument may be an instance associated with the receiving
	 * Session or a transient instance with an identifier associated with existing persistent state. 
	 * Use the Session given.
	 * @param user the instance to be removed
	 * @param s the Session
	 */
	public void delete(com.bibli.bd.User user, Session s)
		throws net.sf.hibernate.HibernateException {
		super.delete(user, s);
	}
	
	/**
	 * Re-read the state of the given instance from the underlying database. It is inadvisable to use this to implement
	 * long-running sessions that span many business tasks. This method is, however, useful in certain special circumstances.
	 * For example 
	 * <ul> 
	 * <li>where a database trigger alters the object state upon insert or update</li>
	 * <li>after executing direct SQL (eg. a mass update) in the same session</li>
	 * <li>after inserting a Blob or Clob</li>
	 * </ul>
	 */
	public void refresh (com.bibli.bd.User user, Session s)
		throws net.sf.hibernate.HibernateException {
		super.refresh(user, s);
	}

    public String getDefaultOrderProperty () {
		return "Name";
    }

}