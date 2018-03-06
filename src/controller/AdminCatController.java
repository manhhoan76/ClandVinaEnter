package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.CatDAO;
import entity.Cat;

@Controller
@RequestMapping(value = "/admin/cat")
public class AdminCatController {

	@Autowired
	private CatDAO catDAO;

	@ModelAttribute
	public void addCommonObject(ModelMap model) {
		model.addAttribute("listCat", catDAO.getItems());
	}

	@RequestMapping(value = "/index")
	public String index(ModelMap model) {

		return "admin.cat.index";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(ModelMap model, @ModelAttribute("objCat") Cat objCat) {
		model.addAttribute("msg", catDAO.addItem(objCat));
		return "redirect:/admin/cat/index";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add() {
		return "admin.cat.add";
	}

	@RequestMapping(value = "/del/{cid}", method = RequestMethod.GET)
	public String del(@PathVariable("cid") int cid, ModelMap model) {
		model.addAttribute("msg",catDAO.delItem(cid));
		return "redirect:/admin/cat/index";
	}
}
