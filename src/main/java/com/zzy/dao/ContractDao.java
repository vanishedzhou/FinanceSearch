package com.zzy.dao;

import java.util.List;

import com.zzy.entity.Contract;

public interface ContractDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Contract record);

    int insertSelective(Contract record);

    Contract selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Contract record);

    int updateByPrimaryKeyWithBLOBs(Contract record);

    int updateByPrimaryKey(Contract record);
    
    int selectMaxId();
    
    List<Contract> selectAll();
}