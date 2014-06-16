package com.bibli.bd;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BdController {
	private static final Logger logger = LoggerFactory
			.getLogger(BdController.class);
	private JSONArray bibliBd, classifyingArray, bdtheque;
	private HibernateImpl dao;

	public BdController() {
		dao = new HibernateImpl();
		System.out.println("hibernate session created");
		try {
			bdtheque = getBDtheque();
			bibliBd = getBibliBD(1);
			classifyingArray = getClassifying(1);
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
	
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

	// ------------------@RequestMapping---------------------
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
		logger.info("Listing Bdtheque");
		model.addAttribute("bdtheque", bdtheque);
		return "index";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String list(Model model) {
		logger.info("Listing bibliBd");
		model.addAttribute("bibliBd", bibliBd);
		model.addAttribute("classifyingArray", classifyingArray);
		return "list";
	}

	@RequestMapping(value = "/newBd", method = RequestMethod.GET)
	public String displayForm(Model model) {
		logger.info("display form new bd");
		Bd bd = new Bd();
		model.addAttribute("bd", bd);
		return "newBd";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(Bd bd, Model model) {
		logger.info("add new bd " + bd.getTitle());
		JSONObject JSONBd = new JSONObject();
		try {
			JSONBd = bd.toJSON();
		} catch (JSONException e) {
			e.printStackTrace();
		}
		bibliBd.put(JSONBd);
		dao.insert(bd);
		model.addAttribute("bibliBd", bibliBd);
		return "list";
	}
}