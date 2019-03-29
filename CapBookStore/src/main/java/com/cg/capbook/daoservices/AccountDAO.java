package com.cg.capbook.daoservices;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.cg.capbook.beans.Account;

public interface AccountDAO extends JpaRepository<Account, String> {
	@Modifying
	@Transactional
	@Query(value="SELECT * FROM Account WHERE LOWER(First_Name) LIKE ?1",nativeQuery=true)
	public List<Account> searchAllUserByName(String userName);
	
}
