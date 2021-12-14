package xemphim.controllerAdmin;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import xemphim.model.Nguoidung;

@Controller
@RequestMapping("/admin")
public class HomeController {
	@RequestMapping("/")
	public String Index(RedirectAttributes redirectAttributes, HttpSession session) {
		Nguoidung n = (Nguoidung) session.getAttribute("user");
		if (n == null) {
			redirectAttributes.addFlashAttribute("message", "Vui lòng đăng nhập trước");
			return "redirect:/login";
		}
		if(!n.getPermission().equals("admin")) {
			return "redirect:/";
		}
		
		return "adminHome";
	}
}
