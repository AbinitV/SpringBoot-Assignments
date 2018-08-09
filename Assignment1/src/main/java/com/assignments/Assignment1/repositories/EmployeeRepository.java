package com.assignments.Assignment1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.assignments.Assignment1.beans.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long>{

}
