<template>
    <form @submit.prevent="addEmployee" class="p-3 mt-3">
        <div class="mb-3">
            <label for="firstName" class="form-label">First Name</label>
            <input v-model="firstName" class="form-control" id="firstName" required>
        </div>
        <div class="mb-3">
            <label for="lastName" class="form-label">Last Name</label>
            <input v-model="lastName" class="form-control" id="lastName" required>
        </div>
        <div class="mb-3">
            <label for="emai1" class="form-label">Email address</label>
            <input v-model="email" class="form-control" id="email" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input v-model="password" class="form-control" id="password" required>
        </div>
        <div>
            <h3>Data retrieved from server:</h3>
            <p v-if="success"> {{ success }}</p>
            <pre>{{ response }}</pre>
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
        <p @click="$router.push('/')">Login</p>
    </form>
</template>

<script>
import EmployeeService from '/home/thao/toDoList/todolist_website/src/services/EmployeeService.js';

export default {
    data() {
        return {
            firstName: "",
            lastName: "",
            email: "",
            password: "",
            success: "",
            response: "",
        }
    },
    methods: {
        addEmployee() {
            EmployeeService.addEmployees(this.firstName, this.lastName, this.email,this.password).then(response => {
                this.success = 'Data saved successfully';
                this.response = JSON.stringify(response, null, 2)
            }).catch(error => {
                this.response = 'Error: ' + error.response.status
            })
            this.firstName = '';
            this.lastName = '';
            this.email = '';
            this.password = '';
        }
    }
}
</script>
