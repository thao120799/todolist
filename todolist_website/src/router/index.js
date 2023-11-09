import { createRouter, createWebHashHistory } from 'vue-router';
import LoginEmployee from '/home/thao/toDoList/todolist_website/src/components/employee/LoginEmployee.vue';
import RegisterEmployee from '/home/thao/toDoList/todolist_website/src/components/admin/RegisterEmployee.vue';

const routes = [
    {
        path: '/',
        name: 'loginEmployee',
        component: LoginEmployee
    }, 
    {
        path: '/register_employee',
        name: 'registerEmployee',
        component: RegisterEmployee
    }, 
]

const router = createRouter({
    history: createWebHashHistory(),
    routes
})

export default router
