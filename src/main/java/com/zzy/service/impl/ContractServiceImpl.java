package com.zzy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzy.dao.ContractDao;
import com.zzy.entity.Contract;
import com.zzy.service.ContractService;

@Service
public class ContractServiceImpl implements ContractService {
	
	@Autowired
	private ContractDao contractDao;

	@Override
	public Contract selectLatestOne() {
		int maxId = contractDao.selectMaxId();
		Contract contract = contractDao.selectByPrimaryKey(maxId);
		return contract;
	}

	@Override
	public Contract selectById(int id) {
		return contractDao.selectByPrimaryKey(id);
	}

	@Override
	public List<Contract> selectAll() {
		return contractDao.selectAll();
	}

	@Override
	public boolean insert(Contract contract) {
		contractDao.insertSelective(contract);

		return false;
	}

	@Override
	public boolean update(Contract contract) {
		contractDao.updateByPrimaryKeySelective(contract);;

		return false;
	}

	@Override
	public boolean deleteById(int id) {
		contractDao.deleteByPrimaryKey(id);

		return false;
	}

}
