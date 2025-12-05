package com.codegnan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codegnan.model.Employee;
import com.codegnan.reposiroty.EmployeeRepository;


@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	public EmployeeRepository employeeRepository;

	@Override
	public Employee getEmployeeById(Long Id) {

		return employeeRepository.findById(Id).orElse(null);
	}

	@Override
	public List<Employee> getAllEmployees() {
		return employeeRepository.findAll();
	}

	@Override
	public Employee saveEmployee(Employee employee) {

		return employeeRepository.save(employee);
	}

	@Override
	public void deleteEmployee(Long id) {
		employeeRepository.deleteById(id);
		

	}

}
