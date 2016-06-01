package com.zzy.service;

import java.util.List;

import com.zzy.entity.Contract;


public interface ContractService {
	public Contract selectLatestOne();
	
	public Contract selectById(int id);
	
	public List<Contract> selectAll();
	
	public boolean insert(Contract contract);
	
	public boolean update(Contract contract);
	
	public boolean deleteById(int id);

}
