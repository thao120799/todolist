package com.thao.toDoList.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDateTime;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "employees")
@EntityListeners(AuditingEntityListener.class)
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long employeeId;

    @NotBlank(message = "FirstName is mandatory")
    private String employeeFirstName;

    @NotBlank(message = "LastName is mandatory")
    private String employeeLastName;

    private long departmentId;

    @NotBlank(message = "Gmail is mandatory")
    private String employeeGmail;

    @NotBlank(message = "Password is mandatory")
    private char[] password;

    private boolean active;

    private int jobPosition;

    @CreationTimestamp
    private LocalDateTime dateCreated;

    @UpdateTimestamp
    private LocalDateTime dateUpdated;

}
