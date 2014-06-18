package com.bibli.bd;

import com.bibli.bd.base.BaseUser;

/**
 * This is the object class that relates to the user table.
 * Any customizations belong here.
 */
public class User extends BaseUser {

/*[CONSTRUCTOR MARKER BEGIN]*/
	public User () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public User (java.lang.Integer _id) {
		super(_id);
	}

	/**
	 * Constructor for required fields
	 */
	public User (
		java.lang.Integer _id,
		java.lang.String _email,
		java.lang.String _pseudo,
		java.lang.Integer _password) {

		super (
			_id,
			_email,
			_pseudo,
			_password);
	}
/*[CONSTRUCTOR MARKER END]*/
}