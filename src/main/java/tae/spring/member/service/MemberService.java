package tae.spring.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import tae.spring.member.dao.MemberDAO;
import tae.spring.member.dto.MemberDTO;

@Service
public class MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	public List<MemberDTO> memberSelectAll() {
		return memberDAO.selectAll();
	}
	
	public MemberDTO memberSelect(String umail) {
		return memberDAO.select(umail);
	}
	
	public void memberInsert(MemberDTO memberDTO) {
		try {
			memberDAO.insert(memberDTO);
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
		}
	}
	
	public void memberUpdate(MemberDTO memberDTO) {
		memberDAO.update(memberDTO);
	}
	
	public void memberDelete(String umail) {
		memberDAO.delete(umail);
	}
}
