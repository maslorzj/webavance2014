package com.bibli.bd.base;

import java.io.Serializable;

import org.json.JSONException;
import org.json.JSONObject;


/**
 * This class has been automatically generated by Hibernate Synchronizer.
 * For more information or documentation, visit The Hibernate Synchronizer page
 * at http://www.binamics.com/hibernatesync or contact Joe Hudson at joe@binamics.com.
 *
 * This is an object that contains data related to the bd table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="bd"
 */
public abstract class BaseBd  implements Serializable {

	public static String PROP_EDITOR = "Editor";
	public static String PROP_COLOR_NAME = "ColorName";
	public static String PROP_COUV_PATH = "CouvPath";
	public static String PROP_SERIE = "Serie";
	public static String PROP_TITLE = "Title";
	public static String PROP_ILLUS_FIRSTNAME = "IllusFirstname";
	public static String PROP_AUTHOR_NAME = "AuthorName";
	public static String PROP_ID = "Id";
	public static String PROP_AUTHOR_FIRSTNAME = "AuthorFirstname";
	public static String PROP_LANGUAGE = "Language";
	public static String PROP_ILLUS_NAME = "IllusName";
	public static String PROP_COLOR_FIRSTNAME = "ColorFirstname";
	public static String PROP_PUBLISH_DATE = "PublishDate";


	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Long _id;

	// fields
	private java.lang.String _serie;
	private java.lang.String _editor;
	private java.lang.String _colorName;
	private java.lang.String _title;
	private java.lang.String _colorFirstname;
	private java.lang.String _couvPath;
	private java.lang.String _authorName;
	private java.lang.String _authorFirstname;
	private java.lang.String _illusFirstname;
	private java.lang.String _language;
	private java.lang.String _illusName;
	private java.lang.Integer _publishDate;


	// constructors
	public BaseBd () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseBd (java.lang.Long _id) {
		this.setId(_id);
		initialize();
	}

	/**
	 * Constructor for required fields
	 */
	public BaseBd (
		java.lang.Long _id,
		java.lang.String _editor,
		java.lang.String _title,
		java.lang.String _couvPath,
		java.lang.String _authorName,
		java.lang.String _illusName) {

		this.setId(_id);
		this.setEditor(_editor);
		this.setTitle(_title);
		this.setCouvPath(_couvPath);
		this.setAuthorName(_authorName);
		this.setIllusName(_illusName);
		initialize();
	}

	protected void initialize () {}



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="vm"
     *  column="id"
     */
	public java.lang.Long getId () {
		return _id;
	}

	/**
	 * Set the unique identifier of this class
	 * @param _id the new ID
	 */
	public void setId (java.lang.Long _id) {
		this._id = _id;
		this.hashCode = Integer.MIN_VALUE;
	}


	/**
	 * Return the value associated with the column: serie
	 */
	public java.lang.String getSerie () {
		return _serie;
	}

	/**
	 * Set the value related to the column: serie
	 * @param _serie the serie value
	 */
	public void setSerie (java.lang.String _serie) {
		this._serie = _serie;
	}


	/**
	 * Return the value associated with the column: editor
	 */
	public java.lang.String getEditor () {
		return _editor;
	}

	/**
	 * Set the value related to the column: editor
	 * @param _editor the editor value
	 */
	public void setEditor (java.lang.String _editor) {
		this._editor = _editor;
	}


	/**
	 * Return the value associated with the column: colorName
	 */
	public java.lang.String getColorName () {
		return _colorName;
	}

	/**
	 * Set the value related to the column: colorName
	 * @param _colorName the colorName value
	 */
	public void setColorName (java.lang.String _colorName) {
		this._colorName = _colorName;
	}


	/**
	 * Return the value associated with the column: title
	 */
	public java.lang.String getTitle () {
		return _title;
	}

	/**
	 * Set the value related to the column: title
	 * @param _title the title value
	 */
	public void setTitle (java.lang.String _title) {
		this._title = _title;
	}


	/**
	 * Return the value associated with the column: colorFirstname
	 */
	public java.lang.String getColorFirstname () {
		return _colorFirstname;
	}

	/**
	 * Set the value related to the column: colorFirstname
	 * @param _colorFirstname the colorFirstname value
	 */
	public void setColorFirstname (java.lang.String _colorFirstname) {
		this._colorFirstname = _colorFirstname;
	}


	/**
	 * Return the value associated with the column: couvPath
	 */
	public java.lang.String getCouvPath () {
		return _couvPath;
	}

	/**
	 * Set the value related to the column: couvPath
	 * @param _couvPath the couvPath value
	 */
	public void setCouvPath (java.lang.String _couvPath) {
		this._couvPath = _couvPath;
	}


	/**
	 * Return the value associated with the column: authorName
	 */
	public java.lang.String getAuthorName () {
		return _authorName;
	}

	/**
	 * Set the value related to the column: authorName
	 * @param _authorName the authorName value
	 */
	public void setAuthorName (java.lang.String _authorName) {
		this._authorName = _authorName;
	}


	/**
	 * Return the value associated with the column: authorFirstname
	 */
	public java.lang.String getAuthorFirstname () {
		return _authorFirstname;
	}

	/**
	 * Set the value related to the column: authorFirstname
	 * @param _authorFirstname the authorFirstname value
	 */
	public void setAuthorFirstname (java.lang.String _authorFirstname) {
		this._authorFirstname = _authorFirstname;
	}


	/**
	 * Return the value associated with the column: illusFirstname
	 */
	public java.lang.String getIllusFirstname () {
		return _illusFirstname;
	}

	/**
	 * Set the value related to the column: illusFirstname
	 * @param _illusFirstname the illusFirstname value
	 */
	public void setIllusFirstname (java.lang.String _illusFirstname) {
		this._illusFirstname = _illusFirstname;
	}


	/**
	 * Return the value associated with the column: language
	 */
	public java.lang.String getLanguage () {
		return _language;
	}

	/**
	 * Set the value related to the column: language
	 * @param _language the language value
	 */
	public void setLanguage (java.lang.String _language) {
		this._language = _language;
	}


	/**
	 * Return the value associated with the column: illusName
	 */
	public java.lang.String getIllusName () {
		return _illusName;
	}

	/**
	 * Set the value related to the column: illusName
	 * @param _illusName the illusName value
	 */
	public void setIllusName (java.lang.String _illusName) {
		this._illusName = _illusName;
	}


	/**
	 * Return the value associated with the column: publishDate
	 */
	public java.lang.Integer getPublishDate () {
		return _publishDate;
	}

	/**
	 * Set the value related to the column: publishDate
	 * @param _publishDate the publishDate value
	 */
	public void setPublishDate (java.lang.Integer _publishDate) {
		this._publishDate = _publishDate;
	}


	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.bibli.bd.base.BaseBd)) return false;
		else {
			com.bibli.bd.base.BaseBd mObj = (com.bibli.bd.base.BaseBd) obj;
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
		JSONObject JSONBd = new JSONObject();
		JSONBd.put("id", this.getId());
		JSONBd.put("couvPath", this.getCouvPath());
		JSONBd.put("editor", this.getEditor());
		JSONBd.put("title", this.getTitle());
		JSONBd.put("authorName", this.getAuthorName());
		JSONBd.put("authorFirstname", this.getAuthorFirstname());
		JSONBd.put("illusName", this.getIllusName());
		JSONBd.put("illusFirstname", this.getIllusFirstname());
		JSONBd.put("language", this.getLanguage());
		JSONBd.put("publishDate", this.getPublishDate());
		
		return JSONBd;
	}

}