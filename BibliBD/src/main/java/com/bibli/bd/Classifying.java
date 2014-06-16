package com.bibli.bd;

import com.bibli.bd.base.BaseClassifying;

/**
 * This is the object class that relates to the classifying table.
 * Any customizations belong here.
 */
public class Classifying extends BaseClassifying {

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Classifying () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Classifying (com.bibli.bd.ClassifyingPK _id) {
		super(_id);
	}

	/**
	 * Constructor for required fields
	 */
	public Classifying (
		com.bibli.bd.ClassifyingPK _id,
		java.lang.String _field) {

		super (
			_id,
			_field);
	}

/*[CONSTRUCTOR MARKER END]*/
}