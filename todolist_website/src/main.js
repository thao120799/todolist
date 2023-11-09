import './assets/main.css'
import 'bootstrap'
import "bootstrap/dist/css/bootstrap.min.css";
import { createApp } from 'vue'
import App from './App.vue'
import router from './router/index.js'

createApp(App).use(router).mount('#app')
