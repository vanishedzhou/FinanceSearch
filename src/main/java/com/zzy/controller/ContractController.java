package com.zzy.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.CustomNumberEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zzy.entity.Contract;
import com.zzy.service.ContractService;


@Controller
//@ComponentScan("com.zzy.contract.service")
public class ContractController {
	
	@Autowired
	private ContractService contractService;
	
	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
		binder.registerCustomEditor(Integer.class, new CustomNumberEditor(Integer.class, true));
	}
	
	@RequestMapping(value="/showContractHistory")
	public String showContractHistory(Model model) {
		List<Contract> contractHistory = contractService.selectAll();
		model.addAttribute("contractHistory", contractHistory);
		System.out.println(contractHistory);
		
		return "ContractHistory";
	}
	
	@RequestMapping(value="/main")
	public String getContractList(Model model) {
		Contract contract = contractService.selectLatestOne();
		model.addAttribute("contract", contract);
		
		return "ContractList";
	}
	
	@RequestMapping(value="/contract_insert")
	public String insertContract(Model model) {
		Contract contract = new Contract();
		model.addAttribute("contract", contract);
		
		return "ContractInsertForm";
	}
	
	@RequestMapping(value="/contract_save", method=RequestMethod.POST)
	public String saveContract(@ModelAttribute Contract contract) {
		System.out.println("in contract save...");
		boolean result = contractService.insert(contract);
		System.out.println(result);
		
		return "redirect:/main";
	}
	
	@RequestMapping(value="/contract_delete/{id}")
	public String deleteContract(@PathVariable int id) {
		System.out.println("in contract delete...");
		boolean result = contractService.deleteById(id);
		System.out.println(result);
		
		return "redirect:/main";
		
	}
	
	@RequestMapping(value="/contract_edit/{id}")
	public String editContract(@PathVariable String id, Model model) {
		Contract contract = contractService.selectById(Integer.valueOf(id));
		model.addAttribute("contract", contract);
		
		return "ContractEditForm";
	}
	
	@RequestMapping(value="/contract_edit/contract_update", method=RequestMethod.POST)
	public String updateContract(@ModelAttribute Contract contract) {
		System.out.println("in contract update...");
		contract.setUpdatedAt(new Date());
		boolean result = contractService.insert(contract);
		System.out.println(result);
		
		return "redirect:/main";
	}

}
