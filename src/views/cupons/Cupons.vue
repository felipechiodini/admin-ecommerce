<template>
    <div class="container-fluid">
        <top-bar></top-bar>

        <div class="row d-flex justify-content-center mt-3">
            <div class="col-10">
                <div class="row mb-3 d-flex">
                    <div class="col-auto ml-auto">
                        <button type="button" class="btn btn-dark mr-3" @click="showModalAdd()">Novo</button>
                        <button type="button" class="btn btn-dark mr-3" @click="showModalEdit()">Editar</button>
                        <button type="button" class="btn btn-dark" @click="showModalDelete()">Excluir</button>
                    </div>
                </div>

                <div class="row">
                    <div class="col-auto ml-auto">
                        <span><b>{{ cuponsList.length + ' Itens' }}</b></span>
                    </div>
                </div>

                <div class="row border border-dark rounded mb-2 p-2" :class="{ 'bg-selected': item.selected }" v-for="(item, key) in cuponsList" :key="key">
                    <div class="col-auto">
                        <b-form-checkbox v-model="item.selected"></b-form-checkbox>
                    </div>

                    <div class="col-12 col-md-2">
                        <span>
                            <b>Ativo: </b>
                            <span v-if="item.active"><i class="fas fa-check-circle text-success"></i></span>
                            <span v-else><i  class="fas fa-times-circle text-danger"></i></span>
                        </span>
                    </div>

                    <div class="col-12 col-md-2">
                        <span><b>Nome: </b>{{ item.name }}</span>
                    </div>

                    <div class="col-12 col-md-2">
                        <span><b>Código: </b>{{ item.code }}</span>
                    </div>

                    <div class="col-12 col-md-2">
                        <span><b>Desconto: </b>{{ item.discount + '%' }}</span>
                    </div>

                    <div class="col-12 col-md-2 ml-auto d-flex justify-content-around">
                        <span @click="showModalEdit(item)"><i class="fas fa-edit pointer text-primary"></i></span>
                        <span @click="showModalDelete(item)"><i class="fas fa-trash-alt text-danger pointer"></i></span>
                    </div>
                </div>

            </div>
        </div>

        <modal-add ref="modal-add"></modal-add>

        <modal-delete ref="modal-delete"></modal-delete>
    </div>
</template>

<script>
import ModalAdd from '../../components/cupons/ModalAdd'
import ModalDelete from '../../components/cupons/ModalDelete'
import TopBar from '../../components/TopBar'
import { BModal } from 'bootstrap-vue'
import { BFormCheckbox } from 'bootstrap-vue'
import axios from 'axios'

export default {
    metaInfo: {
        title: 'Cupons',
    },

    components: {
        TopBar,
        BModal,
        BFormCheckbox,
        ModalAdd,
        ModalDelete
    },

    data: () => {
        return {
            cuponsList: [],
            itemsSelected: [],
            loading: false
        }
    },

    mounted() {
        this.reloadList()
    },

    methods: {
        reloadList() {
            this.loading = true
            const vm = this
            axios({
                method: 'GET',
                url: 'http://localhost:3000/cupon',
            }).then((response) => {
                vm.loading = false
                this.cuponsList = response.data
            })
        },

        showModalAdd() {
            this.$refs['modal-add'].changeShowModal()
        },

        showModalDelete(item) {
            this.$refs['modal-delete'].changeShowModal(item.id)
        },

        showModalEdit() {
            this.$refs['modal-add'].changeShowModal(true)
        }

    }
    
}
</script>


<style lang="scss" scoped>

.bg-selected{
    background-color: #ccc;
}
</style>