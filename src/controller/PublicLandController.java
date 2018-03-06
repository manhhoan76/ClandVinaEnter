package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PublicLandController {
	@RequestMapping("")
	public String index(){
		return "public.land.index";
	}
	
	@RequestMapping("cat")
	public String cat(){
		return "public.land.cat";
	}
	
	@RequestMapping("detail")
	public String detail(){
		return "public.land.detail";
	}
}
