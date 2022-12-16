package tae.spring.member.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import tae.spring.member.dto.MemberDTO;

@Repository
@EnableAspectJAutoProxy(proxyTargetClass = true)
public class MemberDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<MemberDTO> selectAll() {
		return sqlSessionTemplate.selectList("selectAll");
	}
	
	public MemberDTO select(String umail) {
		return sqlSessionTemplate.selectOne("select", umail);
	}
	
	@Transactional
	public void insert(MemberDTO memberDTO) {
		sqlSessionTemplate.insert("insert", memberDTO);
	}
	
	public void update(MemberDTO memberDTO) {
		sqlSessionTemplate.update("update", memberDTO);
	}
	
	public void delete(String umail) {
		sqlSessionTemplate.delete("delete", umail);
	}
}
