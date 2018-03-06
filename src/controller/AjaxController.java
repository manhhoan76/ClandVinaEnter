package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AjaxController {
	@RequestMapping(value = "/ajax/index")
	public String index() {
		return "ajax.index";
	}
	@RequestMapping(value = "/ajax/xu-ly-ajax")
	public @ResponseBody String  index(ModelMap model) {
		return "alo";
	}
}
