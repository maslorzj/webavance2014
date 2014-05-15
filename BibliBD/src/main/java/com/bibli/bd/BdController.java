package com.bibli.bd;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BdController {
	private static final Logger logger = LoggerFactory.getLogger(BdController.class);
	private Map<String, Bd> bibliBd;
	private HibernateImpl dao;

	public BdController() {
		bibliBd = new HashMap<String, Bd>();
		dao = new HibernateImpl();
		System.out.println("hibernate session created");

		Collection<Bd> col = dao.fillBibliBd();
		Iterator<Bd> i = col.iterator();
		while (i.hasNext()) {
			Bd bd = i.next();
			bibliBd.put(bd.getIsbn(), bd);
		}
		logger.info("bibliBd initialized");
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String list(Model model) {
		logger.info("Listing bibliBd");
		model.addAttribute("bibliBd", bibliBd);
		return "list";
	}

	@RequestMapping(value = "/NewBd", method = RequestMethod.GET)
	public String displayForm(Model model) {
		logger.info("display form new bd");
		Bd bd = new Bd();
		model.addAttribute("bd", bd);
		return "NewBd";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(Bd bd, Model model) {
		logger.info("add new bd " + bd.getTitle());
		bibliBd.put(bd.getIsbn(), bd);
		dao.insert(bd);
		model.addAttribute("bibliBd", bibliBd);
		return "list";
	}
}