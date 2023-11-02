package com.thao.toDoList.service;

import com.thao.toDoList.model.Employee;
import com.thao.toDoList.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    private EmployeeRepository employeeRepository;

    @Override
    public List<Employee> searchEmployee(String query) {
        return employeeRepository.searchEmployees(query);
    }

    @Override
    public Employee createEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    @Override
    public Employee updateEmployee(Employee employee, long employeeID) {
        return null;
    }

    @Override
    public Employee deleteEmployee(long employeeID) {
        return null;
    }

    @Override
    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }
}
