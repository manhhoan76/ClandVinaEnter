package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.Cat;

@Repository
public class CatDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Cat> getItems (){
		String sql ="select * from categories";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Cat>(Cat.class));
	}
	public int addItem(Cat objCat) {
		String sql ="insert into categories	(cname) values (?) ";
		return jdbcTemplate.update(sql, new Object[] {objCat.getCname()});
	}
	public int delItem(int idCat) {
		String sql ="delete from categories	where cid=? ";
		return jdbcTemplate.update(sql, new Object[] {idCat});
	}
}
