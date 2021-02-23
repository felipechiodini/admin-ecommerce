<template>
    <div class="container-fluid">
        <div class="row d-flex justify-content-center mt-5">
            <div class="col-10 col-md-6 col-xl-4 border border-dark rounded p-3">
                <label class="m-0">Login</label>
                <input type="text" class="form-control mb-2" v-model="form.login">
                <label class="m-0">Senha</label>
                <input type="password" class="form-control mb-4" v-model="form.password">
                <button class="btn btn-primary w-100" @click="login()">Entrar</button>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'

export default {
    metaInfo: {
        title: 'Login',
    },

    data: () => {
        return {
            form: {
                login: '',
                password: ''
            }
        }
    },

    methods: {
        login() {
            axios({
                method: 'POST',
                url: 'http://localhost:3000/login',
                data: this.form
            }).then((response) => {

            })
        }
    }

    
}
</script>