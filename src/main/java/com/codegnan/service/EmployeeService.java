package com.codegnan.service;

import java.util.List;

import com.codegnan.model.Employee;

public interface EmployeeService {
	Employee getEmployeeById(Long Id);

	List<Employee> getAllEmployees();

	Employee saveEmployee(Employee employee);

	void deleteEmployee(Long id);

}
