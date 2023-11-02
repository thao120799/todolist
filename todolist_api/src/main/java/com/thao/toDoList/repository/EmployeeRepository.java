package com.thao.toDoList.repository;

import com.thao.toDoList.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    @Query("SELECT e FROM Employee e WHERE " +
           "e.employeeFirstName LIKE CONCAT('%', :query, '%') " +
            "OR e.employeeLastName LIKE CONCAT('%', :query, '%') ")
    List<Employee> searchEmployees(String query);

}
