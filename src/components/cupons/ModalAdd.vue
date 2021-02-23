<template>
    <b-modal v-model="showModal" title="Novo Cupom" @ok="saveItem()" cancel-title="Cancelar" ok-title="Salvar" @hidden="clearData()">
        <div class="row mb-3">
            <div class="col-12">
                <b-form-checkbox
                    id="checkbox-1"
                    v-model="form.active"
                    name="checkbox-1"
                    switch
                >
                Ativo</b-form-checkbox>
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
                <label>Código</label>
                <input type="text" class="form-control form-control-sm" v-model="form.code">
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <label>Desconto</label>
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

            axios({
                method: 'PUT',
                url: 'http://localhost:3000/cupon',
                data: this.form
            }).then((response) => {
                console.log(response.data)
            })
        }
    }
}
</script>