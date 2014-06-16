package com.bibli.bd;

import com.bibli.bd.base.BaseBdUser;

/**
 * This is the object class that relates to the bd_user table.
 * Any customizations belong here.
 */
public class BdUser extends BaseBdUser {

/*[CONSTRUCTOR MARKER BEGIN]*/
	public BdUser () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public BdUser (
		com.bibli.bd.Bd _bd,
		com.bibli.bd.User _user) {

		super (
			_bd,
			_user);
	}
/*[CONSTRUCTOR MARKER END]*/
}