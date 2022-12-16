package tae.spring.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tae.spring.member.dto.MemberDTO;
import tae.spring.member.service.MemberService;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/MemberSelect", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("list", memberService.memberSelectAll());
		logger.info("list", model);
		return "./member/member_select_view";
	}
	
	@RequestMapping(value = "/MemberSelectDetail", method = RequestMethod.GET)
	public String detail(Model model, MemberDTO memberDTO) {
		model.addAttribute("memberDTO", memberService.memberSelect(memberDTO.getUmail()));
		return "./member/member_select_detail_view";
	}
	
	@RequestMapping(value = "/MemberInsert", method = RequestMethod.GET)
	public String insert() {
		return "./member/member_insert";
	}
	@RequestMapping(value = "/MemberInsert", method = RequestMethod.POST)
	public String insert(Model model, MemberDTO memberDTO) {
		model.addAttribute("list", memberService.memberSelectAll());
		memberService.memberInsert(memberDTO);
		return "./member/member_insert_view";
	}
	
	@RequestMapping(value = "/MemberUpdate", method = RequestMethod.GET)
	public String update() {
		return "./member/member_update";
	}
	@RequestMapping(value = "/MemberUpdate", method = RequestMethod.POST)
	public String update(MemberDTO memberDTO) {
		memberService.memberUpdate(memberDTO);
		return "./member/member_update_view";
	}
	
	@RequestMapping(value = "/MemberDelete", method = RequestMethod.GET)
	public String delete() {
		return "./member/member_delete";
	}
	
	@RequestMapping(value = "/MemberDelete", method = RequestMethod.POST)
	public String delete(String umail) {
		memberService.memberDelete(umail);
		return "./member/member_delete_view";
	}
	

	
	
	

}
