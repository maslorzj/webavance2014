package com.bibli.bd.base;

import java.io.Serializable;

import org.json.JSONException;
import org.json.JSONObject;


/**
 * This class has been automatically generated by Hibernate Synchronizer.
 * For more information or documentation, visit The Hibernate Synchronizer page
 * at http://www.binamics.com/hibernatesync or contact Joe Hudson at joe@binamics.com.
 *
 * This is an object that contains data related to the user table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="user"
 */
public abstract class BaseUser  implements Serializable {

	public static String PROP_NAME = "Name";
	public static String PROP_FIRSTNAME = "Firstname";
	public static String PROP_ID = "Id";
	public static String PROP_PSEUDO = "Pseudo";


	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Integer _id;

	// fields
	private java.lang.String _pseudo;
	private java.lang.String _name;
	private java.lang.String _firstname;


	// constructors
	public BaseUser () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseUser (java.lang.Integer _id) {
		this.setId(_id);
		initialize();
	}

	/**
	 * Constructor for required fields
	 */
	public BaseUser (
		java.lang.Integer _id,
		java.lang.String _pseudo,
		java.lang.String _name,
		java.lang.String _firstname) {

		this.setId(_id);
		this.setPseudo(_pseudo);
		this.setName(_name);
		this.setFirstname(_firstname);
		initialize();
	}

	protected void initialize () {}



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="vm"
     *  column="id"
     */
	public java.lang.Integer getId () {
		return _id;
	}

	/**
	 * Set the unique identifier of this class
	 * @param _id the new ID
	 */
	public void setId (java.lang.Integer _id) {
		this._id = _id;
		this.hashCode = Integer.MIN_VALUE;
	}


	/**
	 * Return the value associated with the column: pseudo
	 */
	public java.lang.String getPseudo () {
		return _pseudo;
	}

	/**
	 * Set the value related to the column: pseudo
	 * @param _pseudo the pseudo value
	 */
	public void setPseudo (java.lang.String _pseudo) {
		this._pseudo = _pseudo;
	}


	/**
	 * Return the value associated with the column: name
	 */
	public java.lang.String getName () {
		return _name;
	}

	/**
	 * Set the value related to the column: name
	 * @param _name the name value
	 */
	public void setName (java.lang.String _name) {
		this._name = _name;
	}


	/**
	 * Return the value associated with the column: firstname
	 */
	public java.lang.String getFirstname () {
		return _firstname;
	}

	/**
	 * Set the value related to the column: firstname
	 * @param _firstname the firstname value
	 */
	public void setFirstname (java.lang.String _firstname) {
		this._firstname = _firstname;
	}


	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.bibli.bd.base.BaseUser)) return false;
		else {
			com.bibli.bd.base.BaseUser mObj = (com.bibli.bd.base.BaseUser) obj;
			if (null == this.getId() || null == mObj.getId()) return false;
			else return (this.getId().equals(mObj.getId()));
		}
	}


	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	public String toString () {
		return super.toString();
	}
	
	public JSONObject toJSON() throws JSONException {
		JSONObject JSONUser = new JSONObject();
		JSONUser.put("id", this.getId());
		JSONUser.put("pseudo", this.getPseudo());
		JSONUser.put("name", this.getName());
		JSONUser.put("firstname", this.getFirstname());
		
		return JSONUser;
	}

}