package com.bibli.bd;

import java.util.Collection;
import java.util.Iterator;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BdController {
	private static final Logger logger = LoggerFactory
			.getLogger(BdController.class);
	private JSONArray bibliBd, classifyingArray, bdtheque;
	private HibernateImpl dao;
	private User user;

	public BdController() {
		dao = new HibernateImpl();
		System.out.println("hibernate session created");
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	// ------------------@RequestMapping---------------------
	@RequestMapping(value = "/json/getBDtheque", method = RequestMethod.GET)
	public JSONArray getBDtheque() throws JSONException {
		bdtheque = new JSONArray();
		Collection<Bd> col = dao.getBds();
		Iterator<Bd> i = col.iterator();
		while (i.hasNext()) {
			Bd bd = i.next();
			JSONObject JSONBd = bd.toJSON();
			bdtheque.put(JSONBd);
		}
		logger.info("BDtheque initialized");
		return bdtheque;
	}

	@RequestMapping(value = "/json/getBibliBD", method = RequestMethod.GET)
	public JSONArray getBibliBD(int userId) throws JSONException {
		bibliBd = new JSONArray();
		Collection<Bd> col = dao.getBdByUserId(userId);
		Iterator<Bd> i = col.iterator();
		while (i.hasNext()) {
			Bd bd = i.next();
			JSONObject JSONBd = bd.toJSON();
			bibliBd.put(JSONBd);
		}
		return bibliBd;
	}

	@RequestMapping(value = "/json/getClassifying", method = RequestMethod.GET)
	public JSONArray getClassifying(int userId) throws JSONException {
		classifyingArray = new JSONArray();
		Collection<Classifying> col = dao.getClassifyingByUserId(userId);
		Iterator<Classifying> i = col.iterator();
		while (i.hasNext()) {
			Classifying classifying = i.next();
			JSONObject JSONClassifying = classifying.toJSON();
			classifyingArray.put(JSONClassifying);
		}
		return classifyingArray;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) throws JSONException {
		bdtheque = getBDtheque();
		logger.info("Listing Bdtheque");
		model.addAttribute("bdtheque", bdtheque);
		return "index";
	}

	@RequestMapping(value = "/connexion", method = RequestMethod.GET)
	public String connexion(Model model) {
		return "connexion";
	}

	@RequestMapping(value = "/inscription", method = RequestMethod.GET)
	public String addUser(Model model) {
		return "inscription";
	}
	
	@RequestMapping(value = "/pageBd&id={bdId}", method = RequestMethod.GET)
	public String pageBd(@PathVariable Long bdId, Model model) throws JSONException {
		Bd bd = new Bd();
		boolean isInBibliBd;
		
		JSONObject JSONBd = new JSONObject();
		Collection<Bd> col = dao.getBdById(bdId);
		Iterator<Bd> i = col.iterator();
		while (i.hasNext()) {
			bd = i.next();
			JSONBd = bd.toJSON();
		}
		if(JSONBd.length() == 0) {
			return "newBd";
		} else {
			BdUser bdUser = new BdUser();
			try {
				JSONObject JSONBdUser = new JSONObject();
				Collection<BdUser> col2 = dao.isBdInBibliBd(bd.getId(), getUser().getId());
				Iterator<BdUser> i2 = col2.iterator();
				while (i2.hasNext()) {
					bdUser = i2.next();
					JSONBdUser = bdUser.toJSON();
				}
				isInBibliBd = (JSONBdUser.length() != 0);
			} catch (java.lang.NullPointerException ne) {
				return "connexion";
			}						
		}		
		model.addAttribute("bd", JSONBd);
		model.addAttribute("isInBibliBd", isInBibliBd);
		
		return "pageBd";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws JSONException {
		try {
			bibliBd = getBibliBD(getUser().getId());
			classifyingArray = getClassifying(getUser().getId());
			logger.info("Listing bibliBd");
			model.addAttribute("bibliBd", bibliBd);
			model.addAttribute("classifyingArray", classifyingArray);
			return "list";
		} catch (java.lang.NullPointerException ne) {
			return "connexion";
		}
	}

	@RequestMapping(value = "/newBd", method = RequestMethod.GET)
	public String newBd(Model model) {
		try {
			getUser().getId();
			Bd bd = new Bd();
			model.addAttribute("bd", bd);
			return "newBd";
		} catch (java.lang.NullPointerException ne) {
			return "connexion";
		}
	}

	@RequestMapping(value = "/addBd", method = RequestMethod.POST)
	public String addBd(Bd bd, Model model) throws JSONException {
		dao.insertBd(bd);
		// Adding the bd in the user bibliBD
		BdUser newBdUser = new BdUser(bd, getUser());
		dao.insertBdUser(newBdUser);
		return list(model);
	}
	
	@RequestMapping(value = "/addToBibliBd&id={bdId}", method = RequestMethod.GET)
	public String addToBibliBd(@PathVariable Long bdId, Model model) throws JSONException {
		Bd bd = new Bd();
		Collection<Bd> col = dao.getBdById(bdId);
		Iterator<Bd> i = col.iterator();
		while (i.hasNext()) {
			bd = i.next();
		}
		BdUser newBdUser = new BdUser(bd, getUser());
		dao.insertBdUser(newBdUser);
		return list(model);
	}
	
	@RequestMapping(value = "/delFromBibliBd&id={bdId}", method = RequestMethod.GET)
	public String delFromBibliBd(@PathVariable Long bdId, Model model) throws JSONException {
		Bd bd = new Bd();
		Collection<Bd> col = dao.getBdById(bdId);
		Iterator<Bd> i = col.iterator();
		while (i.hasNext()) {
			bd = i.next();
		}
		BdUser newBdUser = new BdUser(bd, getUser());
		dao.deleteBdUser(newBdUser);
		return list(model);
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(String pseudo, String email, String password,
			Model model) throws JSONException {
		try {
			int hashPassword = password.hashCode();
			User user = new User(null, email, pseudo, hashPassword);
			dao.insertUser(user);
		} catch (Exception e) {
			return "inscription";
		}
		return connect(pseudo, password, model);
	}

	@RequestMapping(value = "/connect", method = RequestMethod.POST)
	public String connect(String pseudo, String password, Model model)
			throws JSONException {
		int hashPassword = password.hashCode();
		Collection<User> col = dao.IsUserExist(pseudo, hashPassword);
		Iterator<User> i = col.iterator();
		while (i.hasNext()) {
			setUser(i.next());
		}
		return list(model);
	}
}