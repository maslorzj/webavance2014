package com.bibli.bd;

import com.bibli.bd.base.BaseBd;

/**
 * This is the object class that relates to the bd table.
 * Any customizations belong here.
 */
public class Bd extends BaseBd {

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Bd () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Bd (java.lang.Long _id) {
		super(_id);
	}

	/**
	 * Constructor for required fields
	 */
	public Bd (
		java.lang.Long _id,
		java.lang.String _editor,
		java.lang.String _title,
		java.lang.String _couvPath,
		java.lang.String _authorName,
		java.lang.String _authorFirstname,
		java.lang.String _illusFirstname,
		java.lang.String _illusName) {

		super (
			_id,
			_editor,
			_title,
			_couvPath,
			_authorName,
			_authorFirstname,
			_illusFirstname,
			_illusName);
	}
/*[CONSTRUCTOR MARKER END]*/
}