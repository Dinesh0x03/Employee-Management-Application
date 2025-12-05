package com.codegnan.reposiroty;

import org.springframework.data.jpa.repository.JpaRepository;

import com.codegnan.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee,Long>{

}
