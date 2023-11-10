import axios from "axios";

const EMPLOYEE_API_BASE_URL = "http://localhost:8080/api/v1/employees";

class EmployeeService {

    getEmployees() {
        return axios.get(EMPLOYEE_API_BASE_URL);
    }

    addEmployees(firstName, lastName, gmail, password) {
        return axios.post(EMPLOYEE_API_BASE_URL, {
            employeeFirstName: firstName,
            employeeLastName: lastName,
            employeeGmail: gmail,
            password: password,
        });
    }

    editEmployees() {
        
    }

}

export default new EmployeeService();