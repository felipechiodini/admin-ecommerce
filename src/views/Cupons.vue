<template>
    <div class="container-fluid">
        <top-bar></top-bar>
        <bread-crumb></bread-crumb>

        <div class="row d-flex justify-content-center">
            <div class="col-10">
                <div class="row mb-3">
                    <div class="col-12 ml-auto">
                        <button type="button" class="btn btn-dark" @click="showModalAdd()">Novo</button>
                    </div>
                </div>

                <div class="row border border-dark rounded mb-2 p-2" v-for="(item, key) in cuponsList" :key="key">
                    <div class="col-11 d-flex justify-content-around">
                        <span>
                            <b>Ativo: </b>
                            <span v-if="item.active"><i class="fas fa-check-circle text-success"></i></span>
                            <span v-else><i  class="fas fa-times-circle text-danger"></i></span>
                        </span>
                        <span><b>Nome: </b>{{ item.name }}</span>
                        <span><b>Código: </b>{{ item.code }}</span>
                        <span><b>Desconto: </b>{{ item.discount + '%' }}</span>
                    </div>
                    <div class="col d-flex justify-content-around">
                        <span @click="editItem(item)"><i class="fas fa-edit pointer text-primary"></i></span>
                        <span @click="deleteItem(item)"><i class="fas fa-trash-alt text-danger pointer"></i></span>

                    </div>
                </div>
            </div>
        </div>


        <b-modal v-model="showModal" title="Remover Cupom">
            <p>Tem certeza que deseja remover esse cupom?</p>
        </b-modal>

        <b-modal v-model="showModal" title="Novo Cupom">
            <div class="row mb-3">
                <div class="col-12">
                    <b-form-checkbox
                        id="checkbox-1"
                        v-model="status"
                        name="checkbox-1"
                        value="accepted"
                        unchecked-value="not_accepted"
                        switch
                    >
                    Ativo</b-form-checkbox>
                </div> 
            </div>
            <div class="row">
                <div class="col-12">
                    <label>Nome</label>
                    <input type="text" class="form-control form-control-sm">
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <label>Código</label>
                    <input type="text" class="form-control form-control-sm">
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <label>Desconto</label>
                    <input type="text" class="form-control form-control-sm">
                </div>
            </div>
        </b-modal>

    </div>
</template>

<script>
import TopBar from '../components/TopBar'
import breadCrumb from '../components/BreadCrumb'
import { BModal } from 'bootstrap-vue'
import { BFormCheckbox } from 'bootstrap-vue'
import axios from 'axios'

export default {

    components: {
        TopBar,
        breadCrumb,
        BModal,
        BFormCheckbox,
    },

    data: () => {
        return {
            showModal: false,
            cuponsList: [],

            status: false
        }
    },

    mounted() {
        axios.get('http://localhost:3000/cupon').then(response => (this.cuponsList = response.data))
    },


    methods: {

        editItem(item) {

            console.log(item)

        },

        deleteItem(item) {
            axios.delete('http://localhost:3000/cupon/' + item.id).then(response => (this.cuponsList = response.data))
        },


        showModalAdd() {
            this.showModal = !this.showModal
        }


    }
    
}
</script>