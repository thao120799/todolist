package com.thao.toDoList.service;

import com.thao.toDoList.model.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> searchEmployee(String query);

    Employee createEmployee(Employee employee);

    Employee updateEmployee(Employee employee, long employeeID);

    Employee deleteEmployee(long employeeID);

    List<Employee> getAllEmployees();
}
