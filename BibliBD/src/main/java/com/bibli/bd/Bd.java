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
	public Bd (java.lang.String _isbn) {
		super(_isbn);
	}

	/**
	 * Constructor for required fields
	 */
	public Bd (
		java.lang.String _isbn,
		java.lang.String _editor,
		java.lang.String _title,
		java.lang.String _authorName,
		java.lang.String _authorFirstname,
		java.lang.String _illusFirstname,
		java.lang.String _language,
		java.lang.String _illusName,
		java.util.Date _publishDate) {

		super (
			_isbn,
			_editor,
			_title,
			_authorName,
			_authorFirstname,
			_illusFirstname,
			_language,
			_illusName,
			_publishDate);
	}

/*[CONSTRUCTOR MARKER END]*/
}