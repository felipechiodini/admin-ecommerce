<template>
    <b-modal v-model="showModal" title="Nova Vaga" @ok="saveItem()" cancel-title="Cancelar" ok-title="Salvar" @hidden="clearData()">

        <div class="row mb-3">
            <div class="col-12">
                <b-form-checkbox v-model="form.active" switch>Ativo</b-form-checkbox>
            </div> 
        </div>

        <div class="row">
            <div class="col-12">
                <label>Nome</label>
                <input type="text" class="form-control form-control-sm" v-model="form.name">
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <label>Área</label>
                <select class="custom-select custom-select-sm" v-model="form.cidade">
                    <option value="1">Ecommerce</option>
                    <option value="2">Expedição</option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <label>Cidade</label>
                <select class="custom-select custom-select-sm" v-model="form.cidade">
                    <option value="1">Jaraguá do Sul</option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <label>Pré-Requisitos</label>
                <input type="text" class="form-control form-control-sm" v-model="form.code">
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <label>Atividades</label>
                <input type="text" class="form-control form-control-sm" v-model="form.discount">
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <label>Diferencial</label>
                <input type="text" class="form-control form-control-sm" v-model="form.discount">
            </div>
        </div>

    </b-modal>
</template>

<script>
import axios from 'axios'

export default {

    data: () => {
        return {
            form: {
                active: true,
                name: '',
                code: '',
                discount: ''
            },
            showModal: false
        }
    },

    methods: {
        changeShowModal(edit = false) {
            this.showModal = !this.showModal
        },

        clearData() {
            Object.assign(this.$data, this.$options.data())
        },

        saveItem() {
            if(this.form.active)
                this.form.active = 1
            else
                this.form.active = 0


            console.log(this.form)

            return

            axios({
                method: 'PUT',
                url: 'http://localhost:3000/job',
                data: this.form
            }).then((response) => {
                console.log(response.data)
            })
        }
    }
}
</script>